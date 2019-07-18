class Array
  include ProgressBar::WithProgress
end

@client = Slack::Web::Client.new

def seed_users
  puts "Processing users..."
  @client.users_list.members.each_with_progress do |member|
    m = member.to_hash
    m['uuid'] = m.delete('id')
    print "\r#{m['name']}"
    User.create!(m.to_hash)
  end
end

def seed_channels
  puts 'Processing channels...'
  @client.channels_list.channels.each_with_progress do |channel|
    c = channel.to_hash
    c['uuid'] = c.delete('id')
    print "\r#{c['name']}"
    Channel.create!(c)
  end
end

def seed_conversations
  puts 'Processing conversations...'
  channels = Channel.all.map {|c| c.uuid}
  channels.each_with_progress do |channel|
    begin
      conversations = @client.conversations_history(channel: channel)
    rescue Exception => err
      puts err
      i = 121
      120.times do
        print "\rRetrying in #{i -= 1}..."
        sleep 1
      end
      retry
    end

    begin
      conversations.messages.each do |message|
        message_hash = message.to_hash
        message_hash.delete('type')
        new_c = Conversation.new(message_hash)
        new_c.save
      end
    rescue Exception => err
      puts err
      next
    end
  end
end

def seed
  User.destroy_all
  Channel.destroy_all
  Conversation.destroy_all
  seed_users
  seed_channels
  seed_conversations
end

seed
