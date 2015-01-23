Song = Struct.new(:title, :name, :length)

File.open("songdata") do |song_file|
	songs = []

	song_file.each do |line|
		file, length, name, title = line.chomp.split(/\s*\|\s*/) # Break up lines by | 
		name.squeeze!(" ") # Gets rid of multiple extra spaces
		mins, secs = length.scan(/\d+/) # Break up time by d(digits)
		songs << Song.new(title, name, length)
	end

	puts songs[1]
end

