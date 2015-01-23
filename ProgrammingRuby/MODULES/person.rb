class Person
	
	include Comparable # Include functionality for the class to be Comparable
	attr_reader :name
	
	def initialize(name)
		@name = name
	end

	def to_s
		"#{@name}"
	end

	def <=>(other) # Define our Comparable Method
		self.name <=> other.name
	end

end


p1 = Person.new("Tom")
p2 = Person.new("Bob")

if p1 > p2
	puts "#{p1} is greater than #{p2}"
else
	puts "#{p2} is greater than #{p1}"
end