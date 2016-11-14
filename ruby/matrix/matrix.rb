class Matrix

  def initialize(string)
    @string = string.split("\n")
  end

  def rows
    @string = @string.map {|i| i.split(" ")}
    @string.map do |array|
      array.map { |i| i.to_i }
    end
  end

  def columns
    rows.transpose
  end
end