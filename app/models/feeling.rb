class Feeling < ActiveRecord::Base
  belongs_to :user
  has_many :levels

  validates :level, presence: true
end
