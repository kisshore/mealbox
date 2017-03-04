class CreateMealBoxes < ActiveRecord::Migration
  def change
    create_table :meal_boxes do |t|
      t.string :name
      t.integer :total_count
      t.integer :available

      t.timestamps null: false
    end
  end
end
