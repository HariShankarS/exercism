class Allergies
  
  def initialize(number)
    @number = number
    @number = (number - 256) if number > 256
  end

  def allergic_to?(food_item)
    @number >= food_item_values[food_item]
  end

  def food_item_values
    {
    "eggs" => 1,
    "peanuts" => 2,
    "shellfish" => 4,
    "strawberries" => 8,
    "tomatoes" => 16,
    "chocolate" => 32,
    "pollen" => 64,
    "cats" => 128
    }
  end

  def list
    items = []
    options = []
    food_item_values.each_value do |val|
      options << val if val <= @number
    end
    if options.max == @number
      items << food_item_values.key(@number)
    elsif options.inject(:+) == @number
      options.each do |val|
        items << food_item_values.key(val)
      end
      items
    elsif @number == 0
     []
    else
      items << food_item_values.key(options.max)
      @number -= options.max
      items << Allergies.new(@number).list
      items = items.flatten
      items.sort_by! {|i| food_item_values[i]}
    end
  end

end

