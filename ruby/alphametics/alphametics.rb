class Alphametics

  def initialize
  end

  def solve(equation)
    result = nil
    letters = equation.scan(/[A-Z]/).uniq
    [*0..9].permutation(letters.count).each do |digits|
      map = Hash[*letters.zip(digits).flatten]
      substituted = equation.gsub(/[A-Z]/,map)
      next if substituted.match(/(\s|\A)0/)
      result = map if eval(substituted)
    end
    result
  end

end
module BookKeeping
  VERSION = 3
end