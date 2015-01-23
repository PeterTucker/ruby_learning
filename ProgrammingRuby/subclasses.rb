class Parent
	def initialize
		puts 'hello world'
	end
end

class Child < Parent
end


ch = Child.new # "hello world"