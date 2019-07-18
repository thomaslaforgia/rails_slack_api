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
  print "\rProcessing channels..."
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
    print "\r#{channel}"
    begin
      conversations = @client.conversations_history(channel: channel)
    ## TODO: Specify rate limited exception for rescue
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


def seed_all
  User.destroy_all
  Channel.destroy_all
  Conversation.destroy_all
  seed_users
  seed_channels
  seed_conversations
end

def prompt
  prompt = TTY::Prompt.new
  choices = %w(Users Channels Conversations)
  selections = prompt.multi_select("Select tables to populate:", choices)
  overwrite = prompt.yes?("Overwrite previous table contents?")
  process_selections(selections, overwrite)
end

def process_selections(selections, overwrite)
  selections.each do |s|
    s[0..-2].constantize.destroy_all if overwrite
    send("seed_" + s.downcase)
  end
end

prompt
