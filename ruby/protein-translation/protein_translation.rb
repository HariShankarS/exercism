class Translation

  def self.protein_mapping
  	{
  	  "AUG" => "Methionine",
  	  "UUU" => "Phenylalanine",
  	  "UUC" => "Phenylalanine",
  	  "UUA" => "Leucine",
  	  "UUG" => "Leucine",
  	  "UCU" => "Serine",
  	  "UCC" => "Serine",
  	  "UCA" => "Serine",
  	  "UCG" => "Serine",
  	  "UAU" => "Tyrosine",
  	  "UAC" => "Tyrosine",
  	  "UGU" => "Cysteine",
  	  "UGC" => "Cysteine",
  	  "UGG" => "Tryptophan",
  	  "UAA" => "STOP",
  	  "UAG" => "STOP",
  	  "UGA" => "STOP"
  	}
  end
  
  def self.of_codon(codon)
    protein_mapping[codon]
  end

  def self.of_rna(strand)
  	proteins = []
  	strand.scan(Regexp.new("\\w{1,#{3}}")).each do |i|
  	  raise InvalidCodonError if protein_mapping[i].nil?
  	  break if protein_mapping[i] == "STOP"
  	  proteins << protein_mapping[i]
  	end
  	proteins
  end
end

class InvalidCodonError < ArgumentError
end