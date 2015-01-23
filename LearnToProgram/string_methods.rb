# Reversing Strings
var1 = 'hello world'
var1 = var1.reverse
puts var1 + ' is "hello world" backwards'

# Getting Length of Strings
puts 'What is your name?'
name = gets.chomp
puts 'Hi '+name+'. You have '+name.length.to_s+' characters in your name.'

# Case Methods for Strings
letters = 'aAbBcCdD'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts 'a'.capitalize
puts letters

# Formating lines of Text
line_width = 50
str = '--> text <--'
puts str.ljust(line_width)
puts str.center(line_width)
puts str.rjust(line_width)