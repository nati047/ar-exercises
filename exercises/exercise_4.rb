require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store_3 = Stores.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store_4 = Stores.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store_5 = Stores.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Stores.where(mens_apparel: true)

@mens_stores.each { |store|
  puts store.name
  puts store.annual_revenue
}

@womens_stores_less_a_mill = Stores.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

@womens_stores_less_a_mill.each { |store|
  puts store.name
  puts store.annual_revenue
}