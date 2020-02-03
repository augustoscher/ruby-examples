require 'net/http'
https = Net::HTTP.new('app-staging.rdstation.com.br', 443)
https.use_ssl = true

 
response = https.get("/segmentation_service/conversion_sources")
# status code
puts response.code
# status message
puts response.message
# body (json)
puts  response.body

# puts ""
# puts "==== OTHER EXAMPLE ===="
# https = Net::HTTP.new('gentle-beyond-69584.herokuapp.com', 443)
# https.use_ssl = true
# response = https.get("/tasks")
# puts response.code
# puts response.message
# puts  response.body