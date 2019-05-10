class Instrumento
    def escrever
        "escrevendo"
    end
end

class Teclado < Instrumento
end

class Lapis < Instrumento
    def escrever
        "escrevendo a lápis"
    end
end

class Caneta < Instrumento
    def escrever
        "escrevendo a caneta"
    end
end 

t = Teclado.new
l = Lapis.new
c = Caneta.new

puts t.escrever
puts l.escrever
puts c.escrever