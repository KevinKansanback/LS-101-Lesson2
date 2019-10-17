# 1
# 10.times { |spaces| puts (' ' * spaces) + "The Flintstones are Awesome!" }

# 2
# puts "the value of 40 + 2 is " + (40 + 2)
#  We receive an error because you can't concatenate a string and number.

#  Two ways to fix it are to either add "Numbers#to_s" to "(40 + 2)" OR use string interpolation

# 3

# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0 do
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end
#   factors
# end

# 4
# The first method mutates the array that is passed in as an argument for buffer. The second one does not.

# 5
# limit is declared outside of the scope of the method Ben is trying to use it in.
# To fix this you can either hard code it into the method definition by adding "limit = 15" within the method OR
# you can make it to the list of parameters to be passed in when envoking the method.

# 6 
# 34

# 7
# Yes it is messed with. Because Ruby acts like "pass by reference" in this instance. Since Spot never "re-points" his parameter variables 
# the original objects are changed in place

# 8
# "paper"// rps(rock, paper) -> paper, rps(rock, scissors) -> rock
# rps(paper, rock) -> paper and rps(paper, rock) again returns paper

# 9
# "no" --> foo will always return "yes" and "yes" != "no"


