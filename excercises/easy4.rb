# #1 
# def long_short_long(str1, str2)
#   if str1.length > str2.length
#     str1+str2+str1
#   else
#     str2+str1+str2
#   end
# end

# puts long_short_long('abc', 'defgh')
# puts long_short_long('defh', 'abc')

# #2 
# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

# #3

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 4 == 0 && year % 100 != 0
#     true
#   else
#     false
#   end
# end
# puts leap_year?(2016) #== true
# puts leap_year?(2015) #== false
# puts leap_year?(2100) #== false
# puts leap_year?(2400) #== true
# puts leap_year?(240000) #== true
# puts leap_year?(240001) #== false
# puts leap_year?(2000) #== true
# puts leap_year?(1900) #== false
# puts leap_year?(1752) #== true
# puts leap_year?(1700) #== false
# puts leap_year?(1) #== false
# puts leap_year?(100) #== false
# puts leap_year?(400) #== true

#4
# 
# #5
# def multisum(num)
#   num_arr = []
#   while num > 1
#     num_arr << num
#     num -= 1
#   end
#   multiples_arr = num_arr.select {|x| x % 3 == 0 || x % 5 == 0}
#   multiples_arr.sum
# end
# puts multisum(1000)