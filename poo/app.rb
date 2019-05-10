require_relative "produto"
require_relative "mercado"

produtos = []
produtos.push(Produto.new("Ovo", 25.00))
produtos.push(Produto.new("Leite", 5.00))

m = Mercado.new(produtos)
m.comprar
