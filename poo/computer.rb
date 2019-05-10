class Computer
    def turn_on
      "turning on"
    end
    def shutdown
      "shuttdown"
    end
  end
  
  c = Computer.new
  puts c.turn_on
  puts c.shutdown