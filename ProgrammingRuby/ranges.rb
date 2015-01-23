for i in 0..."cats".length
	puts i
end

print (0..10).to_a


class PowerOfTwo 
	attr_reader :value 
	
	def initialize(value)
    @value = value
	end
	
	def <=>(other)
	    @value <=> other.value
	end
	
	def succ
	    PowerOfTwo.new(@value + @value)
	end
	
	def to_s
	@value.to_s
	end 
end
puts 

p1 = PowerOfTwo.new(1)
p2 = PowerOfTwo.new(32)

puts (p1..p2).to_a
