puts '==========' 
puts ''

class User
    @@user_count = 0
    def add(name)
        puts "User #{name} addded"
        @@user_count += 1
        puts @@user_count
    end
end

u1 = User.new
u1.add("Joao")

u2 = User.new
u2.add("Maria")


