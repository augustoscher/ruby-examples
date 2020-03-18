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
    x += 1
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
puts 
count = 0
loop do
  ok = count == 2
  puts count
  puts ok
  break if ok

  count += 1
end

puts '' 
puts '===== TIMES =====' 

3.times do |i|
    puts 'teste ' + i.to_s
end

puts '' 
3.times { puts 'oi' }

puts '' 
puts '===== ARRAY COLLECTION =====' 

estados = []
estados.push('RS', 'SC', 'BA')
estados.push('SP')
estados.insert(0, 'PR', 'MG')
estados[0] = 'PE'
# puts estados
# puts estados[-1]
# puts estados.first
# puts estados.last
puts estados.count
puts estados.empty?
estados.delete_at(3)
puts estados.count
puts estados.include?('RS')

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

myHash = {}
myHash = hashes.map {|h| h if h[:title] == "[LS - 8P] Email Marketing - Clique"}.reject(&:nil?)

g2 = groups.map do |it|
 h = {:value => it[:value], :title => it[:title]}
end

# Check if a value exists in array
['Cat', 'Dog', 'Bird'].include? 'Dog'

# Append operator. Append item in array
items = []
2000000.times do |i|
  items << i
end

c = 0
items.each_slice(500) do |i|
  c += 1
  puts i
  puts ""
end

puts c #4000 loops em batches de 500 itens

