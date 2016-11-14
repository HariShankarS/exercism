class PigLatin

  def self.translate(words)
    words = words.split(" ")
    pig_latin_word = []
    words.each do |word|
    case word[0]
    when "a","e","i","o","u"
      pig_latin_word << word + "ay"
    when "x","y"
      case word[1]
      when "a","e","i","o","u"
        pig_latin_word << consonant(word)
      else
        pig_latin_word << word + "ay"
      end
    else
      pig_latin_word << consonant(word)
    end
  end
  pig_latin_word.join(" ")
  end

  def self.consonant(word)
    until word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || ( word[0] == "u" && ( word[1] != "a" && word[1] != "e" && word[1] != "i" && word[1] != "o" && word[1] != "u" ) )  do
      starting_letter = word[0]
      word[0] = ""
      word += starting_letter
    end
    word += "ay"
  end

end