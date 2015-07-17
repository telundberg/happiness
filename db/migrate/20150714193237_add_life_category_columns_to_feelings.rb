class AddLifeCategoryColumnsToFeelings < ActiveRecord::Migration
  def change
    add_column :feelings, :category, :string
  end
end
