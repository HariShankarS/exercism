class Raindrops

  def self.mapping
    {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }
  end

  def self.convert(number)
    output = ""
    [3,5,7].each do |i|
      output += mapping[i] if (number % i) == 0
    end
    output = "#{number}" if output.empty?
    output
  end
end

module BookKeeping
  VERSION = 2
end