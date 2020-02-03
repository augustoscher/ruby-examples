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

puts d.is_a?(Dog)
puts d.class

puts ''
puts ''


# if d.is_a?(Dog) 
#     puts 'dooog'
# end

# puts d.inspect
# puts d.class_name


test = d.class
puts test
puts test.is_a?(Dog)



case d
when Dog then puts 'Dog'
when Fixnum then puts 'Object is an integer number'
when String then puts 'Object is a string'
when Hash then puts 'Object is a hash'
end