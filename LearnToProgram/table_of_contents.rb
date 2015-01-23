title = 'Table of Contents'
ch1_title = "Chapter 1: Getting Started"
ch1_pg = "page 1"
ch2_title = "Chapter 2: Numbers"
ch2_pg = "page 9"
ch3_title = "Chatper 3: Letters"
ch3_pg = "page 13"

line_width = 70
puts 
puts title.center(line_width)
puts 
puts ch1_title.ljust(line_width/2) + ch1_pg.rjust(line_width/2)
puts ch2_title.ljust(line_width/2) + ch2_pg.rjust(line_width/2)
puts ch3_title.ljust(line_width/2) + ch3_pg.rjust(line_width/2)
puts