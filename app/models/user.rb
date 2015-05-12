class User < ActiveRecord::Base
  has_many :group_users
  has_many :match_users
  has_many :user_stats
end
