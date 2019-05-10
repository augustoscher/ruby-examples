module ReverseWorld
    def self.puts text
        print text.reverse.to_s
    end
end

module NormalWorld
    def self.puts text
        print text
    end

    class Printt
        def call text
            print text
            print "Printt"
        end
    end
end

# Call method from module
ReverseWorld::puts 'abcdefg'
puts ""
NormalWorld::puts 'abcdefg'
puts ""
p = NormalWorld::Printt.new
p.call "foo"