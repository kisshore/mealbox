class User < ActiveRecord::Base
#serializing likes, dislikes,no_pref to use them as arrays
  serialize :likes,Array
  serialize :dislikes,Array
  serialize :no_pref,Array

end
