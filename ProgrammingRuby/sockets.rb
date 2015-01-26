# require 'socket'

# client = TCPSocket.open('127.0.0.1', 'www')
# client.send("OPTIONS /~dave/ HTTP/1.0\n\n", 0)
# puts client.readlines
# client.close

require 'net/http'
http = Net::HTTP.new('pragprog.com', 80)
response = http.get('/book/ruby3/programming-ruby-1-9')

if response.message == "OK"
puts response.body.scan(/<img alt=".*?" src="(.*?)"/m).uniq[0,3]
end
