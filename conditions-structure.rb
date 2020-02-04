
a = 1
b = 2

# executa quando a condição é falsa.
unless a == b
  puts 'a <> b' 
else
  puts 'a == b' 
end

puts '==========' 
puts '' 

# puts 'Month of birth: ' 
# month = gets.chomp.to_i
month = 2
case month
when 1
    puts 'Jan'
when 2
    puts 'Feb'
when 3 .. 12
    puts 'Mar to Dec'
else 
    puts 'Invalid Month'
end