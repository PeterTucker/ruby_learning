def rn num
	roman = '';
	while num != 0

		while num > 1000
			num -= 1000;
			roman += 'M'
		end

		while num > 500
			num -= 500;
			roman += 'D'
		end

		while num > 100
			num -= 100;
			roman += 'C'
		end

		while num > 50
			num -= 50;
			roman += 'L'
		end

		while num > 10
			num -= 10;
			roman += 'X'
		end

		while num > 5
			num -= 5;
			roman += 'V'
		end

		while num > 0
			num -= 1;
			roman += 'I'
		end

	end
	return roman
end

def rn2 num
	
	roman = ''
	numerals = [[1000, 'M'], [500, 'D'], [100, 'C'], [50, 'L'], [10, 'X'], [5, 'V'], [0, 'I']]
	count = 0

	while num != 0
		while num >= numerals[count][0]
			roman += numerals[count][1]
			if numerals[count][1] != 'I'
				num -= numerals[count][0]
			else
				num -= 1
			end

			if num == 0
				break
			end
		end
		count += 1
	end
	return roman
end

def rn3 num

	roman = ''
	numerals = [[1000, 'M'], [500, 'D'], [100, 'C'], [50, 'L'], [10, 'X'], [5, 'V'], [0, 'I']]
	count = 0

	while num != 0
		while num >= numerals[count][0]

			if num == 9
				num -= 9
				roman += 'IX'
				break
			end

			if num == 4
				num -= 4
				roman += 'IV'
				break
			end

			roman += numerals[count][1]
			num -= numerals[count][0]

			if numerals[count][0] == 0
				num -= 1
			end

			if num == 0
				break
			end
		end
		count += 1
	end
	return roman
end

puts rn3(21144)