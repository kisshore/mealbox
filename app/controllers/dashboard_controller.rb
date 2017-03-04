class DashboardController < ApplicationController
  def index
  end

  def preference_update
   current_user.likes=params.select{|key,value| value == "like"}.keys
   current_user.dislikes=params.select{|key,value| value == "dislike"}.keys
   current_user.no_pref=params.select{|key,value| value == "no_pref"}.keys
   current_user.save
    
   redirect_to :back
  end
end
