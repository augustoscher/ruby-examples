class User
    def add(name)
        @name = name
        puts "User #{name} addded"
        hello
    end

    def hello
        puts "Seja bem-vindo #{@name}"
    end

end

u1 = User.new
u1.add("Joao")

u2 = User.new
u2.add("Maria")
