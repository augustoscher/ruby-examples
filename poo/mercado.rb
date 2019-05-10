require_relative "produto"

class Mercado

    attr_accessor :produtos
    
    def initialize(produtos)
        @produtos = produtos
    end

    def comprar
        @produtos.each do |prod|
            puts "Comprado o produto #{prod.nome} no valor de #{prod.preco}"
        end
    end
end