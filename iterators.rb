
a = 1
b = 2

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

puts '' 
puts '===== FOR LOOP =====' 

fruits = ['apple', 'banana', 'pineapple', 'avocado']
for fruit in  fruits
    puts fruit
end

puts '' 
puts '===== WHILE LOOP =====' 

x = 1
while x < 3
    puts x
    x = x + 1
end
        
puts '' 
puts '===== LOOP DO =====' 

count = 1
loop do
    puts count

    break if count == 3
    # a linha de cima é igual ao código abaixo
    # if count == 3
    #     break
    # end
    count += 1
end

puts '' 
puts '===== TIMES =====' 

3.times do |i|
    puts 'teste ' + i.to_s
end

puts '' 
puts '===== ARRAY COLLECTION =====' 

estados = []
estados.push('RS', 'SC', 'BA')
estados.push('SP')
# puts estados
puts estados.count
puts estados.empty?
estados.delete_at(3)
puts estados.count

for e in estados
    puts e
end

puts '' 
puts '===== HASHES COLLECTION =====' 
#add
capitais = {:RS => 'POA'}
capitais[:SC] = 'FLP'
capitais[:MG] = 'BH'
puts capitais

#access
puts capitais[:RS]
puts "keys: #{capitais.keys} - values #{capitais.values}"

#delete
capitais.delete(:MG)
puts capitais

puts '' 
puts '===== EACH ITERATION =====' 

capitais.each do |cp|
    #cp existe somente no contexto do each
    puts "k: #{cp[0]} - v: #{cp[1]}" 
end

puts '' 
puts '===== MAP ITERATION =====' 
#cria outro array baseado em array existente.
#serve para conversões
array = [1,2,3,4,5]
array2 = array.map do |a|
    a * 2
end
puts "Array antigo #{array}"
puts "Array novo #{array2}"

#substituir valor do array
arrayc = [1,2,3,4,5]
puts "Arrayc antes #{arrayc}"
arrayc.map! do |a|
    a * 3
end
puts "Arrayc depois #{arrayc}"

puts '' 
puts '===== SELECT ITERATION =====' 
#serve para selecionar elementos dada uma condição
#serve para conversões
array = [1,2,3,4,5,6]
selection = array.select do |a|
    a >= 4
end
puts selection.class
puts "Selection: #{selection}"
puts ''
hash = {}
10.times do |i| 
  hash["k#{i}"] = i
end

res = hash.select do |k, v|
    v >= 5
end

puts "Hash #{hash}"
puts "Hash selection #{res}"
puts ''

res = hash.max_by{|k,v| v}
puts "Hash #{hash}"
puts "Biggest value in hash #{res}"

# Check if a value exists in array
['Cat', 'Dog', 'Bird'].include? 'Dog'