def show_menu
  puts ''
  puts 'Menu: '
  puts '1- Sum '
  puts '2- Subtract '
  puts '3- Multiply '
  puts '4- Divide '
  puts '5- Break '
  print 'Choice: '
end

def read_numbers
  puts ''
  array = []
  print 'First number: '
  array.push(gets.chomp.to_f)
  print 'Second number: '
  array.push(gets.chomp.to_f)
  return array
end

def sum(array)
  puts "Sum total: #{array[0] + array[1]}"
end

def subract(array)
  puts "Remainder of subtraction: #{array[0] - array[1]}"
end

def multiply(array)
  puts "Product of multiplication: #{array[0] * array[1]}"
end

def divide(array)
  puts "Division quotient: #{array[0] / array[1]}"
end

loop do
  show_menu
  option = gets.chomp.to_i

  case option
  when 1
    sum(read_numbers)
  when 2
    subract(read_numbers)
  when 3
    multiply(read_numbers)
  when 4
    divide(read_numbers)
  when 5
    break
  else
    puts 'Opção inválida'
  end
end