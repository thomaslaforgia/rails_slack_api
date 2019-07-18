class Conversation < ApplicationRecord
  serialize :files, Array
  serialize :file, Hash
  serialize :comment, Hash
  serialize :pinned_to, Array
  serialize :pinned_info, Hash
  serialize :icons, Hash
  serialize :root, Hash
  serialize :x_files, Array
  serialize :item, Hash
end
