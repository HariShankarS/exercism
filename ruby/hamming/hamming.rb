class Hamming
  
  def self.compute(strand1,strand2)
    raise ArgumentError if strand1.length != strand2.length
    distance = 0 
    strand1.chars.each_with_index do |i,j|
      distance += 1 unless i == strand2.chars[j]      
    end
    distance
  end
  
end
module BookKeeping
  VERSION = 3
end