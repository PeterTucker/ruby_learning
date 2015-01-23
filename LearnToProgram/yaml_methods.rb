require 'yaml'

def save_yaml object, filename
	File.open filename, 'w' do |f|
		f.write object.to_yaml
	end
end

def load_yaml filename
	f = File.read filename
	YAML::load f
end

filename = 'fruits.txt'
arr = ['apple','banana', 'kiwi']
save_yaml arr, filename

data = load_yaml filename

puts data