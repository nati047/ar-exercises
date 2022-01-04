require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Stores < ActiveRecord::Base
end
store_1 = Stores.new
store_1.name = "Burnaby"
store_1.annual_revenue = 300000
store_1.mens_apparel = true
store_1.womens_apparel = true
store_1.save

store_2 = Stores.new
store_2.name = "Richmond"
store_2.annual_revenue = 126000
store_2.mens_apparel = false
store_2.womens_apparel = true
store_2.save

store_3 = Stores.new
store_3.name = "Gastown"
store_3.annual_revenue = 190000
store_3.mens_apparel = true
store_3.womens_apparel = false
store_3.save

puts Stores.count