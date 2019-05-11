class Foo
  def call_private
    bar_private
  end

  private

  def bar_private
    puts "I'm private"
  end

  protected

  def bar_protected
    puts "I'm protected"
  end
end

class Bar < Foo
  def call
    bar_protected
  end
end



Foo.new.call_private
Bar.new.call

#Foo.new.bar_private
#private method `bar' called for #<Foo:0x0000564038ce5a08> (NoMethodError)
#Foo.new.bar_protected
#protected method `bar_protected' called for #<Foo:0x000055b3e8681658> (NoMethodError)