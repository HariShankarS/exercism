class Acronym

  def self.abbreviate(sentence)
    sentence = sentence.gsub(/([a-z])([A-Z])/,'\1 \2')
    sentence.split(/[- ]/).map {|w| w[0].upcase}.join 
  end

end