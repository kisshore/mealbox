class HomeController < ApplicationController
  def index
  end
  def allocate_meals
  end
# This action generates random count of meals & Clears the allocated meals to User
# It will not modify user preferences
  def randomize_meals
        Meal_Box.all.each do |box|
         box.total_count=rand(1..2)
         box.available=box.total
         box.save
        end
       
	User.all.each do |user|
      	  user.meal_of_day = nil
          user.save
        end
     
     redirect_to :back
  end
  def reset
  end
end
