0.upto(10) do |x|
	puts "upto: "+x.to_s
end

10.downto(0) do |y|
	puts "downto: "+y.to_s
end

10.times do |n|
	puts "times: "+n.to_s
end

i = 0
loop do 
	i += 1
	puts "loop: "+i.to_s
	break if i >= 10
end