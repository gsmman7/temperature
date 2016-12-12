class Convert
  #init class method
  KELVIN = 273.15
  FAHR_PLUS = 32
  FAHR_MULT = 1.8
  attr_reader :temperature

  def normal
  $temperature
  end

  def ctof
     ($temperature * FAHR_MULT) + FAHR_PLUS
  end

  def ctok
    $temperature + KELVIN
  end

end
