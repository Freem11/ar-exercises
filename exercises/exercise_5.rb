require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@rev = Store.sum(:annual_revenue)
puts @rev

@avg_rev = Store.average(:annual_revenue)
puts @avg_rev

@big_earners = Store.where("annual_revenue > ?", 1000000).count
puts @big_earners