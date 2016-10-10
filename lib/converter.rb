class TemperatureConverter

attr_accessor :temperature
attr_accessor :fahrenheit
attr_accessor :kelvin
KELVIN = 273

def initialize (temperature)
  @temperature = temperature
end
#read from file and convert
def file_temperature
  afile = File.new("data.txt","r")
  @temperature = afile.sysread(6).to_f
  @kelvin = temperature + KELVIN
  @fahrenheit = temperature * 1.8 + 32
end
def to_text
puts "It's currently #{temperature}°C, #{kelvin} degrees kelvin & #{fahrenheit} degrees fahrenheit"
end
#standard conversion from command line
def commandline_temperature
  @kelvin = temperature + KELVIN
  @fahrenheit = temperature * 1.8 + 32
end
#convert to json string
def to_json
 puts "{celsius: #{temperature},fahrenheit: #{fahrenheit}, kelvin: #{kelvin}}"
end
#convert to html code
def to_html
puts "<div>"
puts "    <div>#{temperature}°C</div>"
puts "    <div>#{fahrenheit}°F</div> "
puts "    <div>#{kelvin}°K</div>"
puts "</div>"
end
#read data from html
def url_temperature(url)
@temperature = Net::HTTP.get(URI.parse(url)).to_f
@kelvin = temperature + KELVIN
@fahrenheit = temperature * 1.8 + 32
end

end
