class Say
  
  def values
    {
    1000000000 => 'billion',
    1000000 => 'million',
    1000 => 'thousand',
    100 => 'hundred',
    90 => 'ninety',
    80 => 'eighty',
    70 => 'seventy',
    60 => 'sixty',
    50 => 'fifty',
    40 => 'forty',
    30 => 'thirty',
    20 => 'twenty',
    19 => 'nineteen',
    17 => 'seventeen',
    16 => 'sixteen',
    15 => 'fifteen',
    14 => 'fourteen',
    13 => 'thirteen',
    12 => 'twelve',
    11 => 'eleven',
    10 => 'ten',
    9 => 'nine',
    8 => 'eight',
    7 => 'seven',
    6 => 'six',
    5 => 'five',
    4 => 'four',
    3 => 'three',
    2 => 'two',
    1 => 'one',
    0 => 'zero'
    }
  end

  def initialize(num)
    @number = num
    @size = @number.to_s.size
  end

  def in_english
    if @number < 0 || @number > 999_999_999_999
      raise ArgumentError
    end
    case @size
    when 0 .. 2
      if values.has_key?(@number)
        number_in_words = values[@number]
      else
        number_in_words = values[(@number / 10) * 10]
        number_in_words += "-" + values[@number % 10]
      end
    when 11,12
      number_in_words_for_large_digits(10)
    when 8,9
      number_in_words_for_large_digits(7)
    when 5,6
      number_in_words_for_large_digits(4)
    else
      number_in_words_for_large_digits(@size)
    end
  end

  def number_in_words_for_large_digits(n)
    divisor = 10 ** (n-1)
    number_in_words = Say.new(@number / divisor).in_english + " " + values[divisor]
    if (@number % divisor) != 0
      number_in_words += " " + Say.new(@number % divisor).in_english
    end
    number_in_words
  end
end


