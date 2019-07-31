# # 1 
# def get_num
#   puts "give me a number to add to our list to check"
#   answer = gets.chomp.to_i
#   answer
# end

# num_array=[]
# 5.times do
#   num_array << get_num
# end  

# puts "give me a number to check"
# num_to_check = gets.chomp.to_i

# if num_array.include? num_to_check
#   puts "Yes #{num_to_check} is in #{num_array}."
# else
#   puts "Sorry it's not in there!"
# end

# # 2
# puts "==> please enter your first postitive #"
# first_num = gets.chomp.to_i
# puts "==> please enter your second positive #"
# second_num = gets.chomp.to_i

# puts "#{first_num} + #{second_num} = #{first_num + second_num}"
# puts "#{first_num} - #{second_num} = #{first_num - second_num}"
# puts "#{first_num} * #{second_num} = #{first_num * second_num}"
# puts "#{first_num} / #{second_num} = #{first_num / second_num}"
# puts "#{first_num} ** #{second_num} = #{first_num ** second_num}"
# puts "#{first_num} % #{second_num} = #{first_num % second_num}"

# # 3
# puts "Please give me a word or words"
# word_or_words = gets.chomp.downcase
# puts "There are #{word_or_words.split.join.length} chars in #{word_or_words}."

# # 4
# def multiply(num1, num2)
#   num1 * num2
# end

# # 5
# def square (num)
#   multiply(num, num)
# end
# puts square 3

# # 6
# def xor?(exp1, exp2)
#   if exp1 && exp2 == true || exp1 && exp2 == false
#     false
#   else
#     true
#   end
# end

# # 7
# def oddities(arr)
#   odd_array = []
#   index = 0
#   while index < arr.length
#     odd_array << arr[index]
#     index +=2
#   end
#   odd_array
# end

# p oddities(["game", 'of', 'thrones'])

# # 8
# def palindrome?(inp)
#   inp == inp.reverse
# end

# # 9
# def real_palindrome?(str)
#   str = str.downcase.delete('^a-z0-9')
#   palindrome?(str)
# end

# 10
def num_palindrome?(num)
  palindrome?(num.to_s)
end
