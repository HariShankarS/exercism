class Proverb

  def initialize(*args)
    @nouns = *args
    if @nouns.last.is_a?(Hash)
      var = @nouns.pop
      @qualifier = var[:qualifier] + " " + @nouns[0]
    else
      @qualifier = @nouns[0]
    end
  end

  def to_s
    proverb = ""
    nouns = @nouns.each_cons(2).to_a
    nouns.each do |i,j|
      proverb += "For want of a #{i} the #{j} was lost.\n"
    end
    proverb += "And all for the want of a #{@qualifier}."
  end
end