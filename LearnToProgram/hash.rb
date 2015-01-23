h = {}

h[:fruits] = ['apple','banana','peach']
h[:vegetables] = ['corn', 'asparagus', 'peas']


h.each do |key, val|
	puts [key,val].to_s
end
