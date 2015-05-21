class Match < ActiveRecord::Base
  belongs_to :group
  has_many :match_users
  has_many :users, through: :match_users
  has_many :stats
end
