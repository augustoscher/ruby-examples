result = ''
loop do
    puts result
    puts ''
    puts 'Escolha: '
    puts '1- Descobrir idade: '
    puts '2- Sair: '
    print 'Opção: '

    option = gets.chomp.to_i

    case option
    when 1
      print 'Digite o ano de nascimento: '
      year_birth = gets.chomp.to_i
      print 'Digite o ano atual: '
      current_year = gets.chomp.to_i
      age = current_year - year_birth
      result = "Quem nasceu em #{year_birth} tem #{age} anos em #{current_year}" 
    when 2
      break
    else
      puts 'Opção inválida'
    end
    system "clear"
end