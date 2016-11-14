class Array

  def accumulate(&block)
    return to_enum unless block_given?
    result = []
    for i in self
      result << yield(i) 
    end
    result
  end

end