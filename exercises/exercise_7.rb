require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "enter store name \n"
store_name = gets

@store_6 = Stores.new
@store_6.name = store_name
@store_6.save

p @store_6
p Stores.count
p @store_6.errors.messages
