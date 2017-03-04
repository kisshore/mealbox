class AddCategoryToMealBox < ActiveRecord::Migration
  def change
    add_column :meal_boxes, :category, :string
  end
end
