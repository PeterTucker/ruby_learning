# Notes:
# Class file name is lowercase: my_class.rb
# Classes are Camel Case: MyClass
# Methods are lowercase: my_function
# variables are lowercase: my_variable

class BookInStock
	
	attr_reader :isbn # You can only read this variable 
	attr_accessor :price # You can read & write this variable
	attr_writer :writeable_variable # You can only write this variable

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
		@writeable_variable
	end
	
	def get_writeable_variable
		@writeable_variable
	end

	def isbn= (new_isbn) # Alternate Method to create a Setter
		@isbn = new_isbn
	end
	
	def price # Alternate Method to create a Getter
		@price
	end

	def to_s
		"ISBN: #{@isbn}, price: #{@price}"
	end

	def price_in_cents 
		Integer(price*100 + 0.5)
	end
end

b1 = BookInStock.new("isbn1", 3)
b1.price = 33.99
b1.isbn = 'isbn2'
puts b1.price
puts 'Price in cents: ' + b1.price_in_cents.to_s
puts b1 # p is more of a robust way of printing out an objects data, variable data, and variable data types
