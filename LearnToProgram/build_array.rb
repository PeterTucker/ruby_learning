arr1 = []
input = 'start'
while input != ''
	puts 'Please enter something. Enter nothing to end loop'
	input = gets.chomp
	if input != ''
		arr1.push input
		arr1 = arr1.sort
		puts 'Your array so far: ' + arr1.to_s
	end
end
arr1 = arr1.sort
puts 'Final Array: ' + arr1.to_s