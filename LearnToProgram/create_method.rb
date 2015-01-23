def say_moo num_of_moos = 1

	puts 'moo '*num_of_moos
end

puts 'How many times would you like to moo?'
moo_num = gets.chomp.to_i
if moo_num==0
	puts 'Moo must be greater than 0'
else
	say_moo moo_num
end