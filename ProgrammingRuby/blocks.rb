# RESOURCE: http://awaxman11.github.io/blog/2013/08/05/what-is-the-difference-between-a-block/

######################
# Single & Multiple Lines Example
#######################
def call_block(&block)
	puts 'bun'
	block.call # yield will do the same as block.call
	#yield # yield will do the same as block.call
	puts 'bun'
	puts
end

call_block {puts 'meat'} 

# Multiple Line Example
call_block do 
	puts 'lettuce'
	puts 'cheese'
	puts 'meat'
end


#######################
# Calling Multiple Procs
#######################
def multi_call_block block, block2
	puts 'bun'
	block.call
	block2.call
	puts 'bun'
	puts
end


# Multiple Proc Example
proc = Proc.new {puts 'cheese' }
proc2 = Proc.new {puts 'meat' }
multi_call_block(proc, proc2) 



#######################
# Passing Variables
#######################
def call_block_w_var(&block)
	puts 'bun'
	block.call 'bacon', 'cheddar'
	block.call 'meat', 'onion jam'
	#yield('bacon','cheddar') # Alternative Methods to call the block
	#yield('meat','onion jam')
	puts 'bun'
	puts
end

call_block_w_var do |var1, var2| 
	puts "#{var1}"
	puts "#{var2}"
end

#######################
# Lambdas are Procs with a Strict number of variables
#######################
lam = lambda do |x| 
	puts 'bun'
	puts x 
	puts 'bun'
	puts
end    # creates a lambda that takes 1 argument
lam.call("meat")                                              # prints out 2
#lam.call                                                     # ArgumentError: wrong number of arguments (0 for 1) : Where's the beef?
#lam.call("Jelly Beans", "Sprouts", "Mustard")                # ArgumentError: wrong number of arguments (3 for 1) : Too many toppings!


