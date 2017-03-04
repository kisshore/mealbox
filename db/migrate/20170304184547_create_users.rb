class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :likes
      t.text :dislikes
      t.text :no_pref
      t.string :meal_of_the_day

      t.timestamps null: false
    end
  end
end
