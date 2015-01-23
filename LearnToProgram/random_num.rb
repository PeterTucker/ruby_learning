puts rand
puts rand
puts rand
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(1)
puts rand(1)
puts rand(1)

puts('The weatherman said there is a') 
puts(rand(101).to_s + '% chance of rain,') # Note: you have to add 1 to get a 0-100 random variable
puts('but you can never trust a weatherman.')


srand 1986 #srand is a random with a seed so we can measure controlled randomness
puts rand(100)
puts rand(100)
puts rand(100)