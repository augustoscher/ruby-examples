module MyModels
    class Person
        attr_accessor :name
        def initialize(name)
            @name = name
        end
    end
    
    class Juridic < Person
        attr_accessor :cnpj
        def initialize(name, cnpj)
            @name = name
            @cnpj = cnpj
        end

        def to_str
            "#{@name} - #{@cnpj}"
        end
    end

    class Fisic < Person
        attr_accessor :cpf
        def initialize(name, cpf)
            @name = name
            @cpf = cpf
        end
        def to_str
            "#{@name} - #{@cpf}"
        end
    end
end

puts MyModels::Juridic.new("Juridic", "65846546678").to_str
puts MyModels::Fisic.new("Fisic", "23423423").to_str