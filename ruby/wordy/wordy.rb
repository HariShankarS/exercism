class WordProblem

  def initialize(question)
    @question = question
  end

  @@mapping = {
    "What is " => "",
    "?" => "",
    "plus" => "+",
    "minus" => "-",
    "multiplied by" => "*",
    "divided by" => "/"
  }

  def answer
    @@mapping.each_pair {|a,b| @question.gsub!(a,b)}
    raise ArgumentError unless @question.scan(/[a-zA-Z]/).empty?
    answer, *rest = @question.split()
    rest.each_slice(2) do |operator,number|
      answer = eval("#{answer} #{operator} #{number}")
    end
    answer
  end

end