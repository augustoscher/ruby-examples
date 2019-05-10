#ways to create	
#/expressao/
#%r{expressao}
#Regexp.new('expressao')

puts "=== OFFSET (DISTANCE BETWEEN INIT AND PATTERN MATCHING) === "
puts /by/ =~ 'ruby'

puts ""
puts "=== MATCH DATA === "

phrase = "Hellow, how are you?"
match_data = /how/.match(phrase)
puts match_data
puts match_data.pre_match
puts match_data.post_match
