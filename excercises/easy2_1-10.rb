# # 1
# puts "Please give me your name"
# name = gets.chomp
# if name.empty?
#   name = "Teddy"
# end

# age = rand(20..200)

# puts "#{name}'s age is #{age} years old!"

# # 2
# puts "Please give me the length of the room in meters"
# length = gets.chomp.to_f
# puts "Please give me the width of the room in meters"
# width = gets.chomp.to_f

# sq_meters = length * width.round(2)
# sq_feet = (length * width) * 10.7639.round(2)

# puts "The area of the room is #{sq_meters} square meters and #{sq_feet} square feet"

# # 3

# puts "Please enter the bill amount"
# bill = gets.chomp.to_f
# puts "Please enter the tip %"
# tip = gets.chomp.to_f
# tip_amount = bill * (tip/100)
# total_bill = bill + tip_amount
# puts "The tip amount is $#{tip_amount}, and the total bill is $#{total_bill}"

# # 4
# puts "What is your age?"
# current_age = gets.chomp.to_i

# puts "What age would you like to retire?"
# desired_ret_age = gets.chomp.to_i

# current_date = Time.now.year
# years_to_go = desired_ret_age - current_age
# retirement_date = current_date + years_to_go

# puts "It's #{current_date}, you'll retire in #{retirement_date}."
# puts "Only #{years_to_go} years of work left!"

# # 5
# puts "What is your name?"
# name = gets.chomp

# if name.include?("!")
#   name.chop!
#   puts "HELLO #{name.upcase}." + " WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}"
# end

# # 6
# (1..99).each {|num| puts num if num.odd?}

# # 7 
# (1..99).each {|num| puts num if num.even?}

# # 8
# def compute_sum(num)
#   total = 0
#   1.upto(num) {|value| total += value}
#   total
# end

# def compute_product(num)
#   total = 1
#   1.upto(num) {|value| total *= value}
#   total
# end

# puts "Please enter a number greater than 0"
# number = gets.chomp.to_i
# puts "Press 's' to sum and 'p' to multiply all the numbers between 1 and your entry"
# which_calculate = gets.chomp.downcase

# if which_calculate == 's'
#   puts "The sum of the integers between 1 and #{number.to_s} is #{compute_sum(number)}."
# elsif which_calculate == 'p'
#   puts "The product of the integers between 1 and #{number.to_s} is #{compute_product(number)}."
# else
#   puts "Don't know what you mean. Goodbye"
# end
  
  