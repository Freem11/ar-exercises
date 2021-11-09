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
@store1.employees.create(first_name: "Salim", last_name: "Smith", hourly_rate: 60)
@store1.employees.create(first_name: "Lateef", last_name: "Azeez", hourly_rate: 60)

@store2.employees.create(first_name: "Fred", last_name: "Flintson", hourly_rate: 60)
@store2.employees.create(first_name: "Barney", last_name: "Rubble", hourly_rate: 60)
@store2.employees.create(first_name: "Wilma", last_name: "Flintstone", hourly_rate: 60)

