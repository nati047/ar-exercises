require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Stores < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than: 0}
  validates :store_has_mens_or_womens
  def store_has_mens_or_womens
    unless mens_apparel || womens_apparel
      errors.add("must have mens or womens apparels") 
  end   
end

@store_1 = Stores.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

@store_2 = Stores.new
@store_2.name = "Richmond"
@store_2.annual_revenue = 126000
@store_2.mens_apparel = false
@store_2.womens_apparel = true
@store_2.save

@store_3 = Stores.new
@store_3.name = "Gastown"
@store_3.annual_revenue = 190000
@store_3.mens_apparel = true
@store_3.womens_apparel = false
@store_3.save

puts Stores.count