require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store_1 = Stores.first
@store_2 = Stores.find_by(id: 2)

@store_1.update(name: "Toronto")
p @store_1