class Die
	def initialize
		roll
	end
	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end
end



d = Die.new
puts d.showing