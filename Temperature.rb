class TemperatureConverter
attr_accessor :temperature
attr_accessor :fahrenheit
attr_accessor :kelvin

def initialize (temperature = 25)
  puts "what is the temperature?"
  temperature = gets.to_i
  @temperature = temperature
end

def conversion
  @kelvin = temperature + 273
  puts "It's currently #{kelvin} degrees kelvin"
  @fahrenheit = temperature * 1.8 + 32
  puts "Its currently #{fahrenheit} degrees fahrenheit"
end

end

if __FILE__ == $0
  temp = TemperatureConverter.new
  temp.conversion
end
