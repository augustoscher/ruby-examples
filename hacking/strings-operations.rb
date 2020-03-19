require 'os'
require 'cpf_utils'

puts '==========' 

def hello param
    puts "Olá #{param}"
end

def hello2(param="param", param2="param2")
    puts "Olá #{param} #{param2}"
end

def compare(a,b)
    a > b
end

# hello("Augusto")
# hello2("Augusto", "Scher")
hello "Augusto"
hello2 "Augusto", "Scher"
hello2
puts "3 > 4? #{compare(3,4)}"
puts "4 > 3? #{compare(4,3)}"

puts '==========' 
puts '' 

def show_os
  if OS.windows?
    "Windows"
  elsif OS.linux?
    "Linux"
  elsif OS.mac?
    "OSx"
  else
    "Not Found"
  end
end

def show_pc_stats
  "My PC has #{OS.cpu_count} cores, it's #{OS.bits} bits and the OS is #{show_os}"
end

puts show_pc_stats

puts '==========' 
puts '' 
puts "Random CPF: #{CpfUtils.cpf}"
puts "Random Formatted CPF: #{CpfUtils.cpf_formatado}"
puts "02506196013 is valid cpf? #{"02506196013".valid_cpf?}" 

puts '==========' 
puts '' 
