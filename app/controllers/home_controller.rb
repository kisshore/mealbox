class HomeController < ApplicationController
  def index
  end

  def allocate_meals
       User.all.each do |user|
       if user.meal_of_the_day.nil?
          if meal=Meal_Box.where(category: user.likes).where("available > ?", 0).first
             user.meal_of_the_day = meal.name
             meal.available = meal.available-1
             meal.save
          elsif meal=Meal_Box.where(category: user.no_pref).where("available > ?", 0).first
             user.meal_of_the_day = meal.name
             meal.available = meal.available-1
             meal.save
           end
       end
      user.save
     end
     redirect_to :back

  end
# This action generates random count of meals & Clears the allocated meals to User
# It will not modify user preferences
  def randomize_meals
        Meal_Box.all.each do |box|
         box.total_count=rand(1..2)
         box.available=box.total_count
         box.save
        end
       
	User.all.each do |user|
      	  user.meal_of_the_day = nil
          user.save
        end
     
     redirect_to :back
  end
  def reset
  end
end
