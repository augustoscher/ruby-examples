require_relative 'animal.rb'

class Dog < Animal
    def latir
        "latindo"
    end
end

d = Dog.new
puts d.pular
puts d.dormir
puts d.latir