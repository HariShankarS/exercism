class Isogram
  def self.is_isogram?(word)
    letters = word.downcase.chars - [' ', '-']
    letters == letters.uniq
  end
end