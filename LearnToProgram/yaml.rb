require 'yaml'

test_array = ['bacon cheese', 'horse', 'robot head']

test_string = test_array.to_yaml

filename = 'yaml_output.txt'

File.open filename, 'w' do |f|
	f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string


puts read_array