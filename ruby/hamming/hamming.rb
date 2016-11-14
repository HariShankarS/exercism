class Hamming
  
  def self.compute(strand1,strand2)
    raise ArgumentError if strand1.length != strand2.length
    sum = 0 
    strand1.chars.each_with_index do |i, j|
      unless strand1.chars[j] == strand2.chars[j]
        sum += 1
      end
    end
    sum
  end
  
end