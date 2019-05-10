puts "==== LAMBDA ===="
first_lambda = lambda { puts "my first lambda"}
first_lambda.call
first_lambda.call
first_lambda.call

puts ""
puts "==== OUTRA SINTAXE LAMBDA ===="
second_lambda = -> { puts "my second lambda"}
second_lambda.call
second_lambda.call
second_lambda.call

puts ""
puts "==== PARAM NA LAMBDA ===="
names = ["opa", "opab", "opac"]
fLambda = -> (params) { params.each {|param| puts param } }
fLambda.call(names)

puts ""
puts "==== MULTIPLE LINES LAMBDA ===="
# tem que ser o nome lambda
my_lambda = lambda do |numbers|
    index = 0
    puts 'Número atual + Próximo número'
    numbers.each do |number|
        return if numbers[index] == numbers.last
        puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
        puts numbers[index] + numbers[index + 1]
        index += 1
    end
end

numbers = [1, 2, 3, 4]
my_lambda.call(numbers)

puts ""
puts "==== ARGUMENTS LAMBDA ===="
#passa lambda por parametro
def foo(l1, l2)
    l1.call
    l2.call
end
    
first_lambda = -> { puts "my first lambda"}
second_lambda = -> { puts "my second lambda"}

foo(first_lambda, second_lambda)