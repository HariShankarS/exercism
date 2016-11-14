class ETL

  def self.transform(input)
    map = input.flat_map do |score, letters|
      letters.map(&:downcase).product([score])
    end
    map.to_h 
  end
  
end