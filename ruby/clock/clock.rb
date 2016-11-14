class Clock
  
  def initialize(number1,number2)
    @number1 = number1
    @number2 = number2
    validate
  end

  def self.at(number1,number2)
    Clock.new(number1,number2)
  end

  def validate
    if @number2 >= 60
      @number1 += @number2 / 60
      @number2 %= 60
    end
    if @number2 < 0
      until @number2 >= 0 
        @number1 -= 1
        @number2 += 60
      end 
    end
    if @number1 >= 24
      @number1 %= 24
    end
    if @number1 < 0
      until @number1 >= 0
      	puts @number1
        @number1 += 24
      end
    end
  end

  def to_s 
    hours + ":" + minutes
  end

  def hours   
    puts @number1.inspect   
    sprintf '%02d', @number1
  end

  def minutes
    sprintf '%02d', @number2 
  end

  def +(input1)
    Clock.new(hours.to_i, minutes.to_i + input1)
  end

  def ==(second_object)
    to_s == second_object.to_s
  end
end
