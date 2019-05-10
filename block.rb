#block é uma função anonima (sem nome)
puts '===== BLOCK SIMPLES =====' 
5.times { puts "Exec the block" }

puts ''
puts '===== BLOCK COM PARAMETROS =====' 
sum = 0
numbers = [5, 10, 5]
#passa o parametro number que vem de numbers
numbers.each {|number| sum += number }
puts sum

puts ''
puts '===== BLOCK COM MULTIPLAS LINHAS =====' 
foo = {:k1 => "vk1", :k2 => "vk2", :k3 => "vk3"}

foo.each do |k, v|
    puts "key = #{k}"
    puts "value = #{v}"
end
puts "MESMA COISA EM UMA LINHA"
foo.each {|k, v| puts "key = #{k} - value = #{v}"}

puts ''
puts '===== METODO RECEBENDO BLOCK COMO PARAMETRO =====' 

def foobar 
    if block_given?
        yield
    else
        puts "block not given"
    end
end

def foobar2
    if block_given?
        yield
        yield
    else
        puts "block not given"
    end
end

def fun_param_block(name, &block)
    puts "fun_param_block do #{name}"
    block.call
end

foobar {puts "eu sou um block por parametro "}
foobar {foo.each {|k, v| puts "key = #{k} - value = #{v}"}}
foobar2 {puts "vou ser impresso duas vezes pois sou um block e tem dois yield no method"}
#nao passando o block
foobar 
puts ""
#parametro e block juntos
fun_param_block("aqui é parametro") {puts "aquie é block"}

