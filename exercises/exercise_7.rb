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
puts "Enter a store name"
tmp = gets.chomp
@store = Store.create(name: tmp)
puts @store.errors.messages
Store.create(name: tmp, womens_apparel: true, annual_revenue: 400000)
