# 1
# I would expect it to print [1,2,2,3] as "uniq" doesn't mutate the caller

#2 
# the difference is ? is a ternary operator when part of Ruby syntax and ! is 
# the bang operator which converts true to false etc.
# Else both characters used to potentially communicate information.
## 1 - != == "is not" or "not equal to" -- if x != 5 (when x =3)
## 2 changes the object to opposite of boolean value
## 3 describes an existing method as a destructive action (mutates the caller)
## 4 just a nameing convention
## 5 could be a ternary operator if followed by ":"
## 6 changes object to boolean equivalent

# # 3

# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.gsub!('important', 'urgent')
# puts advice

# 4 
# numbers.delete_at(1) = mutating the caller and deleting and returning whatever element was stored at index[1] so numbers becomes [1,3,4,5]
# numbers.delete(1) = mutating the caller and deleting and returning any element that == 1 so numbers become [2,3,4,5]

# 5
# (10..100).include?(42)

# # 6
# famous_words = "seven years ago.."
# famous_words.prepend("four score and ")
# OR 
# famous_words.insert(0, "four score and ")

# 7
# 42

# # 8
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]
# flintstones.flatten!

# 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")