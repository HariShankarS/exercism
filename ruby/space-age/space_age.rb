class SpaceAge

  LIST = {
      "earth" => 1.0,
      "mercury" => 0.2408467,
      "venus" => 0.61519726,
      "mars" => 1.8808158,
      "jupiter" => 11.862615,
      "saturn" =>  29.447498,
      "uranus" =>  84.016846,
      "neptune" => 164.79132
    }

   SECONDS_IN_A_YEAR = 31557600

  def initialize(seconds)
    @seconds = seconds
  end

  LIST.each do |planet, earth_years|
    define_method :"on_#{planet}" do
      seconds/(SECONDS_IN_A_YEAR * earth_years)
    end
  end
  
  def seconds
    @seconds
  end
end