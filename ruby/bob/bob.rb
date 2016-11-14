class Bob

  def initialize 	
  end

  def hey(remark)
    if remark == remark.upcase && (remark.downcase.chars != ( remark.downcase.chars - [*"a".."z"]))
      "Whoa, chill out!"
    elsif remark.end_with?("?")
      "Sure."
    elsif remark.strip.empty?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end