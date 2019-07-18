class User < ApplicationRecord
  serialize :profile, Hash
end
