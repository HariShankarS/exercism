class Matrix

  def initialize(string)
    @string = string.split("\n")
    @rows = extract_rows
    @columns = extract_columns
  end

  def extract_rows
    string = @string.map {|i| i.split(" ")}
    string.map do |array|
      array.map { |i| i.to_i }
    end
  end

  def rows
    @rows
  end

  def extract_columns
    rows.transpose
  end

  def columns
    @columns
  end

  def saddle_points
    result = []
    rows.each_with_index do |i,j|
      columns.each_with_index do |a,b|
        result << [j,b] if i.max == a.min
      end
    end
    result
  end
end