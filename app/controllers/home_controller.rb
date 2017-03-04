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
     redirect_to "/"

  end
# This action generates random count of meals & Clears the allocated meals to User
# It will not modify user preferences
  def randomize_meals
        Meal_Box.all.each do |box|
         box.total_count=rand(1..2)
         box.available=box.total_count
         box.save
        end
        User.update_all(:meal_of_the_day => nil)      
     
     redirect_to "/"
  end
  def reset
    User.update_all(:meal_of_the_day => nil, :likes => nil, :dislikes => nil, :no_pref => nil)
    Meal_Box.update_all(:total_count => nil, :available => nil)

    redirect_to "/"
  end
end
