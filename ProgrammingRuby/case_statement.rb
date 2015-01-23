car_age = gets.to_f 

case car_age
when 0...1
	puts "Brand New Car!"
when 1...3
	puts "Nice and new!"
when 3...10
	puts "Reliable but slightly dinged."
when 10...29
	puts "Clunker"
else
	puts "Vintage gem"
end

#we’d get the wrong answer because 9.5 does not fall within any of the ranges,
# Vintage gem