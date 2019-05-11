class Foo
  attr_accessor :teste
  def bar
    puts self
  end
end

foo = Foo.new
puts foo
foo.bar

puts ""
puts "other Foo"

class Foo
  attr_accessor :teste
  def bar
    puts self
  end
end
 
foo = Foo.new
puts foo
foo.bar

puts ""

class Test
  def self.bar
    puts self
  end
end

Test.bar