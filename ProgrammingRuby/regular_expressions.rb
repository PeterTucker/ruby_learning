if "dog and cat" =~ /cat/
	puts "cat found"
else
	puts "cat not found"
end


# use =~ to test if the line was found
File.foreach("testfile").with_index do |line, index| 
	puts "#{index}: #{line}" if line =~ /on/
end

# use !~ to test if the line WAS NOT found
File.foreach("testfile").with_index do |line, index| 
	puts "#{index}: #{line}" if line !~ /on/
end


# Extending the String class to censor itself against bad words.
class String 

	def censor! # Change Self
		replace censor
	end

	def censor # Return string with swears replaces
		swears = ["shit", "crap"]
		new_str = self
		swears.each do |swear|
			if swear =~ /#{swear}/i # /i means ignore case
				new_str = new_str.gsub(/#{swear}/i, "█" * swear.length) 
				# if I had used .sub instead of .gsub, it would only replace the first fuck. 
				# This would not be optimal as multiple fucks were given.
			end
		end

		new_str
	end
end

swear_str = "You should not say the word shit. Shit is a bad word. So is crap. Say 'poopy'."
swear_str.censor!
puts swear_str # "You should not say the word shit. Shit is a bad word. So is crap. Say 'poopy'."
