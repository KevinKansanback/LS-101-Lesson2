# 1 I would expect to get an undefined variable error. Of course Ruby does not throw that error if initializing of the variable happens inside an if block even if that block isn't executed
# 2 "hi there"
# 3 a) one, two, three
#   b) one, two, three
#   c) two, three, one 

# 4
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   return false unless dot_separated_words.length == 4
  
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     return false unless is_an_ip_number?(word)
#   end
#   true
# end