# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

def write_to_json(hash, file_name='sample')
  f = File.open("#{ENV['PWD']}/#{file_name}.json", "w")
  f.write(hash.to_json)
  f.close
end

namespace :sample do
  @client = Slack::Web::Client.new
  @client.auth_test

  desc "Writes user API response to sample_user.json"
  task :user do
    users_list = @client.users_list
    return false if !users_list["ok"]
    members = users_list.members
    write_to_json(members.first, 'sample_user')
  end

  desc "Writes channel API response to sample_channel.json"
  task :channel do
    channels_list = @client.channels_list
    return false if !channels_list["ok"]
    channels = channels_list.channels
    write_to_json(channels.first, 'sample_channel')
  end

  desc "Writes conversation API response to sample_post.json"
  task :conversation => :environment do
    channel = Channel.busiest_channels.first.uuid
    conversations = @client.conversations_history(channel: channel)
    return false if !conversations["ok"]
    conversation = conversations.messages.first
    conversation.delete('type')
    write_to_json(conversation, 'sample_conversation.json')
  end

end

desc "Starts session with Slack client as @client"
task :slack => :environment do
  @client = Slack::Web::Client.new
  Pry.start
end

namespace :cache do
  # desc "Clears all files and directories in tmp/cache"
  task :clear do
    FileUtils.rm_rf(Dir['tmp/cache/[^.]*'])
  end
end
