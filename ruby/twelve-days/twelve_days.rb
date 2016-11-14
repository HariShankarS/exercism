class TwelveDays

  def self.song
    song = []
    days = ["first","second","third","fourth","fifth","sixth","seventh","eighth","ninth","tenth","eleventh","twelfth"]
    days.each_with_index do |i,j|
      song << "On the #{i} day of Christmas my true love gave to me, #{gifts(j+1)} in a Pear Tree."
    end
    song.join("\n\n")+"\n"
  end

  def self.gifts(n)
    gifts = {
      1 => "a Partridge",
      2 => "two Turtle Doves, and",
      3 => "three French Hens",
      4 => "four Calling Birds",
      5 => "five Gold Rings",
      6 => "six Geese-a-Laying",
      7 => "seven Swans-a-Swimming",
      8 => "eight Maids-a-Milking",
      9 => "nine Ladies Dancing",
      10 => "ten Lords-a-Leaping",
      11 => "eleven Pipers Piping",
      12 => "twelve Drummers Drumming"
    }
    result = []
    n.times do |i|
      result << gifts[i+1]
    end
    result.reverse.join(", ").gsub("and,","and")
  end
end
