
class OrangeTree
	def initialize
		@height = 1
		@years = 0
		@lifespan = 10
		@yield_amount = 0 # How many oranges should the tree yield
		@orange_count = 0
		@alive = true
		puts 'An Orange Tree has grown. Type "Help" at any time.'
	end

	def alive?
		@alive
	end
	
	def height
		@height
	end

	def one_year_passes
		@years += 1

		if @years > @lifespan
			puts 'Tree has died'
			@alive = false
		else
			if @years == 1
				puts 'Tree is 1 year old.'
			else
				puts "Tree is #{@years} years old."
			end

			@height += 1
			puts "Tree has a height of #{@height}ft."

			if @years == 4
				@yield_amount = 4
			end

			if @years > 3
				@yield_amount += 1
			end

			@orange_count = @yield_amount
			puts "Your tree produced #{@orange_count} oranges this year."

		end
	end

	def count_the_oranges
		if @orange_count == 1
			puts "You have #{@orange_count} orange"
		else
			puts "You have #{@orange_count} oranges"
		end
	end

	def pick_an_orange
		if @orange_count > 0
			puts "You picked an orange."
			@orange_count -= 1
			count_the_oranges
		else
			puts "Oh no! You have no oranges to pick."
		end
	end

end


class OrangeController
	
	def initialize orange_tree
	@orange_tree = orange_tree
	end

	def command action
		puts
		case action.downcase
		when 'pick'
			@orange_tree.pick_an_orange
		when 'wait'
			@orange_tree.one_year_passes
		when 'count'
			@orange_tree.count_the_oranges
		when 'help'
			line_width = 60
			puts "------- HELP --------".center(line_width)
			puts "Pick - Pick an orange.".center(line_width)
			puts "Wait - Wait one year.".center(line_width)
			puts "Count - Count your oranges".center(line_width)
			puts "Help - Bring up the Help menu.".center(line_width)
			puts "---------------------".center(line_width)
		else 
			puts "\"#{action}\" doesn't seem to be a valid command."
		end
	end

end

puts "
         ,-':.x.;`-.
       ,;;;`,:,,: .;`.
      /;;;;.: ,.:. : '\\
     |;;;;;.`'.:,;`. : ;
     |;;;; ;,` `' ` .',;
     |;;;;`.:`.:,`, ., ;
      \\;;;;,`:.::, .: /
       `:;;;;::,:,::,'
         `-;;_,_..-' 

"
ot = OrangeTree.new
oc = OrangeController.new ot
while ot.alive?
	puts
	puts 'What would you like to do with your tree?'
	input = gets.chomp
	oc.command input
end

puts '-- End of Program --'
exit
