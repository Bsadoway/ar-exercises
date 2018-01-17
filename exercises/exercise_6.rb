require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Blake", last_name: "Sadoway", hourly_rate: 120)
@store1.employees.create(first_name: "Papa", last_name: "Emeritus 3rd", hourly_rate: 200)
p @store1.employees

@store2.employees.create(first_name: "Bagel", last_name: "Boy", hourly_rate: 7)
@store2.employees.create(first_name: "Bob", last_name: "Bobberson", hourly_rate: 22)
@store2.employees.create(first_name: "Varg", last_name: "Vikernes", hourly_rate: 14)
p @store2.employees
