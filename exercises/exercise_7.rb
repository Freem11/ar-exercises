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

puts "Please enter your store's details"
@store_name = gets.chomp
puts "Please enter your store's annual revenue"
@store_rev = gets.chomp.to_i
puts "does your store sell mens apparal (True or False)"
if gets.chomp == "True"
  @store_men = true
else
  @store_men = false
end
puts "does your store sell womens apparal (True or False)"
if gets.chomp == "True"
  @store_women = true
else
  @store_women = false
end

if !Store.create(name: "#{@store_name}", annual_revenue: "#{@store_rev}", mens_apparel: "#{@store_men}", womens_apparel: "#{@store_women}").valid?
  puts "You did not enter all requred info, please supply store name, annual revenue and true or false if the store sells mens and/or womens apparal."
  # puts Store.create(name: "#{@store_name}", annual_revenue: "#{@store_rev}", mens_apparel: "#{@store_men}", womens_apparel: "#{@store_women}").errors.full_messages
else
  puts "Your store was successfully created!"
end



