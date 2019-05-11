def print_shopping_list
  file = File.open('shopping-list.txt')
  file.each {|line| puts line }
end

puts ""
puts "==== WRITE SHOPPING LIST ===="
def write_shopping_list
  #a it's append option
  File.open('shopping-list.txt', 'a') do |line|
      line.puts('rice')
      line.puts('oil')
      line.print('Soy')
      line.print(' Milk')
  end
end

puts "==== SHOPPING LIST ===="
print_shopping_list
puts ""
puts "==== WRITE SHOPPING LIST ===="
write_shopping_list
puts ""
puts "==== SHOPPING LIST ===="
print_shopping_list