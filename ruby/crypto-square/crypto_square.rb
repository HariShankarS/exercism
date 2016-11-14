class Crypto

  def normalize_plaintext
    @string = @string.gsub(/[^0-9a-z]/i, '').downcase
  end

  def initialize(string)
    @string = string
  end

  def size
    Math.sqrt(normalize_plaintext.size).ceil	
  end

  def ciphertext
    cipher_text = []
    plaintext_segments[0].size.times do |i|
      plaintext_segments.each do |a|
        cipher_text << a[i]
      end
    end
    cipher_text.join
  end

  def normalize_ciphertext
    ciphertext.scan(Regexp.new("\\w{1,#{size-1}}")).join(' ')
  end

  def plaintext_segments
    normalize_plaintext.scan(Regexp.new("\\w{1,#{size}}"))
  end

end
