class Group < ActiveRecord::Base
  has_many :group_users
  has_many :matches
end
