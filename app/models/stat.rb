class Stat < ActiveRecord::Base
  belongs_to :match
  has_many :user_stats
end
