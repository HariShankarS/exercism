class Nucleotide
  
  def self.from_dna(dna)
    if (dna.chars - ['A','C','G','T'] == [])
      dna
    else
      raise ArgumentError
    end
  end

end

class String
  def histogram
    result = Hash.new
    dna_symbols = ['A','C','G','T']
    dna_symbols.each do |i|
      result[i] = count(i)
    end
    result
  end
end