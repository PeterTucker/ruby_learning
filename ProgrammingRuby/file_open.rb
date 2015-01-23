# Extends the File Class with open_and_process so I can inject a yeild statement. Cool!
class File
	def self.open_and_process(*args)
		result = file = File.new(*args)
		#If there's a block, pass in the file and close the file when it returns
		if block_given? 
			result = yield file 
			file.close
		end
		result
	end
end

File.open_and_process("testfile", "r") do |file| 
	while line = file.gets
		puts line
	end 
end