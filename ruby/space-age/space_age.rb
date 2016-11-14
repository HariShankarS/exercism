class SpaceAge

  def initialize(seconds)
    @seconds = seconds
  end

  def seconds
    @seconds
  end
  
  def on_earth
    ((Years::EARTH) * @seconds)
  end
  
  def on_mercury
    ((Years::MERCURY) * @seconds)
  end

  def on_venus
    ((Years::VENUS) * @seconds)
  end  

  def on_mars
    ((Years::MARS) * @seconds)
  end  

  def on_jupiter
    ((Years::JUPITER) * @seconds)
  end  

  def on_saturn
    ((Years::SATURN) * @seconds)
  end 

  def on_uranus
    ((Years::URANUS) * @seconds)
  end  

  def on_neptune
    ((Years::NEPTUNE) * @seconds)
  end  

  module Years
    EARTH = 1/31557600.0
    MERCURY = EARTH/0.2408467
    VENUS = EARTH/0.61519726
    MARS = EARTH/1.8808158
    JUPITER = EARTH/11.862615
    SATURN = EARTH/29.447498
    URANUS = EARTH/84.016846
    NEPTUNE = EARTH/164.79132
  end
  
end