class Channel < ApplicationRecord
  serialize :members, Array
  serialize :topic, Hash
  serialize :purpose, Hash
  serialize :previous_names, Array

  def users
    self.members.map {|m| User.find_by(uuid: m)}
  end

  def self.busiest_channels
    self.order(num_members: :desc)
  end
end
