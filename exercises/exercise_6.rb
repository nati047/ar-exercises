require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employees < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, :inclusion => 40..200 , numericality: {only_integer: true } 
end

@store_1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store_1.employees.create(first_name: "Nat", last_name: "Tek", hourly_rate: 100)
@store_1.employees.create(first_name: "Mak", last_name: "Book", hourly_rate: 75)

@store_2.employees.create(first_name: "Jessi", last_name: "Lingard", hourly_rate: 50)
@store_2.employees.create(first_name: "Markus", last_name: "Rashford", hourly_rate: 75)
@store_2.employees.create(first_name: "Linda", last_name: "Beaker", hourly_rate: 80)

p Employees.first