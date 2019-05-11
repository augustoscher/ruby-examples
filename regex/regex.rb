puts "=== WAYS TO INIT === "
puts /expressao/.class
puts %r{expressao}.class
puts Regexp.new('expressao').class

puts ""
puts "=== OFFSET (GET INITIAL POSITION OF STRING ARRAY) === "
puts /by/ =~ 'ruby'
puts /ub/ =~ 'ruby'
puts /y/ =~ 'ruby'
puts /a/ =~ 'ruby'

puts ""
puts "=== MATCH DATA === "

phrase = "Hellow, how are you?"
match_data = /how/.match(phrase)
puts match_data
puts match_data.pre_match
puts match_data.post_match

puts ""
puts "=== METACHARACTERS AND SCAPES === "
#(, ), [, ], {, }, ., ?, +, *
#to find a metacharacter on string, you have to use scape symbol "\"
phrase = "how are you?"
puts /\?/.match('Tudo bem?')

puts ""
puts "=== CHARACTER CLASSES === "
#list who defines wich caraters will match
puts /[t]exto/.match('texto começando com t')
puts /[t]exto/.match('---texto começando com t')
puts /[1-5]/.match('12345')
puts /[a-z]/.match('Oi')
puts /[A-Z]/.match('Oi')
puts /[0-9]/.match('A4')
puts /A\d/.match('A4')

puts ""
puts "=== REPETITIONS === "
#search 0-9 two times
#search -
#search 0-9 nine times
puts /[0-9]{2}-[0-9]{9}/.match('11-988776655')
puts "A343".match(/[A-Z]\d{3}/)
puts "ABC343".match(/[A-Z]{3}\d{3}/)
puts ""
nbrs = []
nbrs.push("Hi, how are you? My WhatApp is (99)7432-1122".match(/\([0-9]{2}\)[0-9]{4}-[0-9]{4}/))
nbrs.push("(11)8888-2222ojdoai it as oi".match(/\([0-9]{2}\)[0-9]{4}-[0-9]{4}/))
nbrs.push("Hi, asdadoijsd (47)1234-5678 oiaoiasjoasidj".match(/\([0-9]{2}\)[0-9]{4}-[0-9]{4}/))
puts "Found some numbers"
nbrs.each {|n| puts n }

