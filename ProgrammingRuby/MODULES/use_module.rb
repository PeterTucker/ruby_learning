require_relative 'debug'

class Class1
	include Debug
	attr_reader :name 
	def initialize(name)
		@name = name
	end
end

class Class2
	include Debug
	attr_reader :name 
	def initialize(name)
		@name = name
	end
end

cl1 = Class1.new('Class1_Name')
cl2 = Class2.new('Class2_Name')

puts cl1.who_am_i?
puts cl2.who_am_i?