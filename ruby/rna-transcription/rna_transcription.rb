class Complement

  def self.of_dna(dna)
    if (dna.chars - ["A","T","C","G"]).empty?
      dna = dna.gsub('A','4').gsub('T','3').gsub('C','2').gsub('G','1')
      dna.gsub('4','U').gsub('3','A').gsub('2','G').gsub('1','C')
    else
      ''
    end
  end
  
end
