puts 'Please enter your name:'
name = gets # Get User Input
name = name.chomp # chomp removes any enters at the end of your string.
puts 'Hello, ' + name.to_s + '.'