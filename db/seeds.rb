# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#seeding values for category    
 category_list = ["chicken", "mutton", "fish", "prawns", "squids"]
 category_list.each do |item|
  Category.create(name: item)
 end
