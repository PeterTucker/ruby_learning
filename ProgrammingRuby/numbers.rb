
# Casting Example
num = "33"
num = Integer(num)
puts "#{num.class}: #{num}"


def spacer
	yield
	puts
end

#Looping Numbers
spacer {3.times {print "x "}}
spacer {1.upto(5){|i| print i, " " }}
spacer {99.downto(95){|i| print i, " "}}
spacer {50.step(80,5){|i| print i, " "}}