class Produto
    attr_accessor :nome, :preco
    
    def initialize(nome, preco)
        @nome = nome
        @preco = preco
    end

    def to_string
        puts "Nome: #{@nome}, Preço: #{@preco}"
    end
end