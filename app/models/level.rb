class Level < ActiveRecord::Base
  belongs_to :feeling
  # has_many :feelings

  validates :amount, presence: true

  def categories
    @all_levels.each do
    end
  end
end
