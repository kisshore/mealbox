class DashboardController < ApplicationController
  def index
  end
#This action will update user preferences and return to same page from where request raised
  def preference_update
   current_user.likes=params.select{|key,value| value == "like"}.keys
   current_user.dislikes=params.select{|key,value| value == "dislike"}.keys
   current_user.no_pref=params.select{|key,value| value == "no_pref"}.keys
   current_user.save
    
   redirect_to dashboard_index_path
  end
end
