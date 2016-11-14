class Atbash

  def self.encode(string)
    result = []
    letters = string.downcase.chars-[' ',',','.']
    letters.each do |i|
      result << letter_mapping[i]
      result << i if letter_mapping[i].nil?
    end
    result.join.scan(Regexp.new("\\w{1,#{5}}")).join(' ')
  end

  def self.letter_mapping
    alphabets = [*"a".."z"]
    mapping = []
    alphabets.each_with_index do|i,j|
      mapping << {i => alphabets[25-j]}
    end
    mapping.reduce({}, :merge)
  end
end