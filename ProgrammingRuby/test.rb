require_relative 'to_test'
require 'test/unit'

class TestMultiplier < Test::Unit::TestCase
	def test_simple
		assert_equal(100, Multiplier.new(10, 10).to_i) 
	end 
end
