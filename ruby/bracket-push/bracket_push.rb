class Brackets
  
  def self.paired?(string)
    brackets =  {'[' => ']', '{' => '}', '(' => ')'}
    pair = []
    string.each_char do |c|
      if brackets.has_key?(c)
        pair << c
      elsif brackets.has_value?(c)
        return false unless brackets[pair.pop] == c
      end
    end
    pair.empty?
  end

end
module BookKeeping
  VERSION = 3
end