class SecretHandshake

  def initialize(number)
    if number.is_a? Numeric
      @string = number.to_s(2)
    else
      @string = "0"
    end
  end

  def mapping
    {
      "1" => "wink",
      "10" => "double blink",
      "100" => "close your eyes",
      "1000" => "jump"
    }
  end

  def commands
    if @string.size == 5
      @string[0] = ""
      secret_handshake.reverse
    else
      secret_handshake
    end
  end

  def secret_handshake
    result = []
    @string.chars.reverse.each_with_index do|i,j|
      result << mapping[(10**j).to_s] if i == "1"
    end
    result
  end
end
