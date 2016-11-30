class Pangram

  def self.is_pangram?(string)
    string = string.scan(/[a-zA-Z]/)
    string.uniq.length >= 26
  end

end

module BookKeeping
  VERSION = 2
end