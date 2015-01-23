# Grandma should only hear what you say when you yell at her.
puts 'Say something to Grandma.'
say = gets.chomp

while say != say.upcase
	puts 'What did you say, sonny?'
	say = gets.chomp
end

puts 'Oh, you said, "' + say + '".'