class Raindrops


  def self.divisible_by(*args,number)
    divisor1,divisor2,divisor3 = *args
    (number % (divisor1 || number))== 0 && (number % ( divisor2 || number)) == 0 && (number % (divisor3 || number)) == 0
  end

  def self.convert(number)
    if divisible_by(5,7,3,number)
      "PlingPlangPlong"
    elsif divisible_by(3,5,number)
      'PlingPlang'
    elsif divisible_by(3,7,number)
      "PlingPlong"
    elsif divisible_by(5,7,number)
      "PlangPlong"
    elsif divisible_by(3,number)
      'Pling'
    elsif divisible_by(5,number)
      'Plang'
    elsif divisible_by(7,number)
      'Plong'
    else 
      "#{number}"
    end
  end

end