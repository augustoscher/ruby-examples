require 'net/http'
# get index.html from example.com
example = Net::HTTP.get('example.com', '/index.html')
 
File.open('example.html', 'w') do |line|
 line.puts(example)
end

