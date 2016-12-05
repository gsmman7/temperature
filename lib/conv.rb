class Convert
  attr_reader :temperature
  #init class method
  KELVIN = 273
  FAHR_PLUS = 32
  FAHR_MULT = 1.8
  def initialize (temperature)
    @temperature = temperature
  end

  def normal
  temperature
  end

  def ctof
     temperature * FAHR_MULT + FAHR_PLUS
  end

  def ctok
    temperature + KELVIN
  end

end
