class BookInStock
	
	attr_reader :isbn # You can only read this variable 
	attr_accessor :price # You can read & write this variable
	
	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end
	
	def get_writeable_variable
		@writeable_variable
	end

	def to_s
		"ISBN: #{@isbn}, price: #{@price}"
	end

	def price_in_cents 
		Integer(price*100 + 0.5)
	end
end