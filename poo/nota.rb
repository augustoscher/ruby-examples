class Nota
    # def cliente
    #     @cliente
    # end

    # def cliente= cliente
    #     @cliente = cliente
    # end
    attr_accessor :cliente, :valor, :tipo
    
    def initialize(tipo, valor)
        @tipo = tipo
        @valor = valor
    end

    def to_string
        puts "Tipo: #{@tipo}, Valor: #{@valor}, Cliente: #{@cliente}"
    end

end

notas = []
notas.push(Nota.new(:S, 50.50))
notas.push(Nota.new(:E, 1250.85))
notas.push(Nota.new(:E, 85))

2.times do
    n = Nota.new(:S, 100)
    n.cliente = "Augusto"
    notas.push(n)
end

notas.each do |n| 
    print "Nota: "
    puts n.to_string
end