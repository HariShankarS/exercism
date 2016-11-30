class BeerSong

  def initialize
  end

  def verse(count)
    pluralize(count).capitalize + " of beer on the wall, " + pluralize(count) + " of beer.\n" +
    message(count) + ", " + bottles_left(count) +" of beer on the wall.\n"
  end

  def verses(count,count1)
    array = [*count1...count].reverse
    output = verse(count)
    array.each do |i| 
      output << "\n" + verse(i)
    end
    output
  end

  def lyrics
    verses(99,0)
  end

  def pluralize(num)
    if num == 1
      "#{num} bottle"
    elsif num == 0
      "no more bottles"
    else
      "#{num} bottles"
    end
  end 

  def message(num)
    case num
    when 1
      "Take it down and pass it around"
    when 0
      "Go to the store and buy some more"
    else
      "Take one down and pass it around"
    end
  end

  def bottles_left(num)
    case num
    when 2
      "1 bottle"
    when 1
      "no more bottles"
    when 0
      "99 bottles"
    else
      "#{num-1} bottles"
    end	
  end

end
module BookKeeping
  VERSION = 2
end