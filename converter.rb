class TemperatureConverter
attr_accessor :temperature
attr_accessor :fahrenheit
attr_accessor :kelvin

def initialize (temperature)
#  puts "what is the temperature?"
#  temperature = gets.to_i    #voor nadien nog een input te kunnen doorgeven
  @temperature = temperature
end
#read from file and convert
def file
  afile = File.new("data.txt","r")
  @temperature = afile.sysread(6).to_f
  @kelvin = temperature + 273
  @fahrenheit = temperature * 1.8 + 32
  puts "It's currently #{kelvin} degrees kelvin & #{fahrenheit} degrees fahrenheit"
end
#standard conversion from command line
def conversion_cmd
  @kelvin = temperature + 273
  puts "It's currently #{kelvin} degrees kelvin"
  @fahrenheit = temperature * 1.8 + 32
  puts "Its currently #{fahrenheit} degrees fahrenheit"
end
#convert to json string
def give_json
 puts "{celsius: #{temperature},fahrenheit: #{fahrenheit}, kelvin: #{kelvin}}"
end
#convert to html code
def give_html
puts "<div>"
puts "    <div>#{temperature}°C</div>"
puts "    <div>#{fahrenheit}°F</div> "
puts "    <div>#{kelvin}°K</div>"
puts "</div>"
end
#read data from html
def open(url)
 Net::HTTP.get(URI.parse(url))
end

end
