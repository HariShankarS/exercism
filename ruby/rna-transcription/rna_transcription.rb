class Complement

  def self.of_dna(dna)
    if (dna.chars - ["A","T","C","G"]).empty?
      complement = []
      dna.chars.each do |i|
        complement << mapping[i]
      end
      complement.join("")
    else
      ''
    end
  end
  
  def self.mapping
    {
      "A" => "U",
      "T" => "A",
      "C" => "G",
      "G" => "C"
    }
  end
end

module BookKeeping
  VERSION = 4
end