

# r = read
# w = write
# r+ = read/write

file = File.new("testfile", "r") 
# ... process the file 
file.close # You have to manually close


File.open("testfile", "r") do |file| 
	file.each do |line|
		puts line
	end
	puts
end # <- file automatically closed here since in a block

File.open("testfile") do |file| 
	while line = file.gets
		puts line
	end
	puts
end

File.open("testfile") do |file| 
	file.each_byte.with_index do |ch, index|
		print "#{ch.chr}:#{ch} "
	break if index > 10 
	end
	puts
	puts
end

IO.foreach("testfile") {|line| puts line }
puts

sentences = IO.readlines('testfile')
puts sentences.to_s


# write a file
File.open("example.txt", "w") do |file|
	file.puts "Hello World"
	file.puts "2nd line of text"
end

puts File.read("example.txt")