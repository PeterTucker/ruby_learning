chapters =['Table of Contents', ['Chapter 1: Getting Started', "page 1"], ['Chapter 2: Number', "page 9"], ['Chapter 3: Letters', "page 13"]]

line_width = 70;
chapters.each do |text|
	if text == chapters[0]
		puts
		puts text.center(line_width)
		puts
	else
		puts text[0].ljust(line_width/2) + text[1].rjust(line_width/2)
	end
end
puts