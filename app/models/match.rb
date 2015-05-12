class Match < ActiveRecord::Base
  belongs_to :group
  has_many :match_user
  has_many :stats
end
