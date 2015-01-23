# How to Append to Strings together
str1 = 'hello '
str2 = 'world!'
str1 << str2 # append str2 to str1
puts str1

# How to Append multiple items in an array to another array.
arr1 = ['bacon']
arr2 = ['cheese', 'lettuce']

arr2.each do |item|
	arr1 << item
end

puts arr1.to_s
