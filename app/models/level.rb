class Level < ActiveRecord::Base
  belongs_to :feeling
  # has_many :feelings

  validates :amount, presence: true
end
