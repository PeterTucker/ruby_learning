puts [1,2].inject(:+)
puts ['apple','banana'].inject(:+)


class ABCs
	def lcase
		('a'..'z').inject(:+)
	end
	def ucase
		('A'..'Z').inject(:+)
	end
end


puts ABCs.new.lcase
puts ABCs.new.ucase