puts 'cat' < 'dog' # Will return true because cat comes before dog in the dictionary
puts 'A' < 'a' # Will return true because lower case 'a' comes before upper case 'A'.
puts 'A' < 'Z'
puts 'Z' < 'a'
puts 'bug' < 'Xander' # Will return false because lower case 'b' comes before upper case 'X'.
puts 'bug' < 'Xander'.downcase # Will return true as lower case 'b' comes before lower case 'x'