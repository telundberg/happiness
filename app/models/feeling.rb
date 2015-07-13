class Feeling < ActiveRecord::Base
  has_many :users
  has_many :levels

  validates :level, presence: true
end
