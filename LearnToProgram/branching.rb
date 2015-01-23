puts
puts 'Hello what\'s your name?'
name = gets.chomp

if name == 'Peter'
	puts 'That\'s a great name!'
elsif name == 'Dave'
	for i in 1..3
		puts 'I can not allow you to do that, ' + name.to_s + '!'
	end
elsif name == 'Jack'
	count = 1
	while count < 5
		count+=1
		puts 'All work and no play makes ' + name.to_s + ' a dull boy...'
	end
else 
	puts 'Hello ' + name.to_s + '!'
end
puts