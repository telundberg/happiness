class Level < ActiveRecord::Base
  belongs_to :feeling

  validates :amount, presence: true
end
