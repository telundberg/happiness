class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :amount, null: false
      t.integer :user_id
    end
  end
end
