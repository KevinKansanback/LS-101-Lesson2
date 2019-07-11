require 'pry'
# # 1
# def repeat(str, num_of_times)
#   num_of_times.times {puts str}
# end

# repeat('this is a string', 10)

# # 2
# def is_odd?(num)
#   # num % 2 == 1
#   num.remainder(2) == 1 || num.remainder(2) == -1
# end

# odd = is_odd?(-4)
# puts odd

# # 3

# def num_list(num)
#   num_string = num.to_s.split('')
#   digits = num_string.map {|number| number.to_i}
#   digits
# end

# p num_list(12345)

# # 4

# def display_count_occurrences(list)
#   occurences = {}
  
#   list.each do |element|
#     occurrences[element] = list.count(element)
#   end
  
#   occurences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# # 5
# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end
  
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# # 6
# def reverse_words(words)
#   string_array = words.split
  
#   string_array.map do |word|
#     word.reverse! if word.length >=5
#   end
  
#   string_array.join(' ')
# end


# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# # 7
# def stringy(int)
#   string = []
#   int.times do |num|
#     number = num.even? ? 1 : 0
#     string << number
#   end
#   string.join    
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# # 8
# def average(array)
#   sum = array.reduce { |memo, number| memo + number}
#   sum / array.count
# end

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# #9

# def sum(num)
#   digits = num.to_s.split('')
#   digits.map! do |element|
#     element.to_i
#   end
#   digits.reduce { |memo, number| memo + number}
# end
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# #10
# def calculate_bonus(amount, bool)
# bool ? (amount/2) : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000