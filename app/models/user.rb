class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#serializing likes, dislikes,no_pref to use them as arrays
  serialize :likes,Array
  serialize :dislikes,Array
  serialize :no_pref,Array

end
