class Robot

  attr_accessor :bearing
  attr_accessor :coordinates
  
  def initialize
    @directions = [:east, :south, :west, :north ]
  end

  def orient(direction)	
    if @directions.include?(direction)
      @bearing = direction
    else
      raise ArgumentError
    end
  end

  def turn_right
    index = @directions.index(@bearing)
    index = -1 if index == 3
    index += 1
    @bearing = @directions[index]
  end

  def turn_left
    index = @directions.index(@bearing)
    index = 4 if index == 0
    index -= 1
    @bearing = @directions[index]
  end

  def at(x,y)
    @x = x
    @y = y
    @coordinates = [@x,@y]
  end

  def advance
    case @bearing
    when :east
      @x += 1
    when :west
      @x -= 1
    when :north
      @y += 1
    when :south
      @y -= 1
    end
    @coordinates = [@x,@y]
  end

end

class Simulator

  def initialize
    @mapping = {
      "L" => :turn_left,
      "R" => :turn_right,
      "A" => :advance
    }

  end

  def instructions(string)
    instructions = []
    string.split("").each do |string|
      instructions << @mapping[string]
    end
    instructions
  end

  def place(robot,options)
    @x = options[:x]
    @y = options[:y]
    @direction = options[:direction]
    robot.at(@x,@y)
    robot.orient(@direction)
  end

  def evaluate(robot,instructions)
    instructions.split("").each do |i|
      robot.send(@mapping[i])	
    end
  end
end