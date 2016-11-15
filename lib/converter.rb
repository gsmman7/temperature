

#Celcius class
class Celsius
attr_reader :temperature
#init class method
def initialize (temperature)
  @temperature = temperature
end
def normal
temperature
end
#reading file  method
def self.file_temperature
  afile = File.new("data.txt","r")
  afile.sysread(6).to_f
end
#reading url method
def self.url_temperature(url)
  Net::HTTP.get(URI.parse(url)).to_f
end
end

#fahrenheit class
class Fahrenheit
  attr_reader :temp
  #initialize method
def initialize (temp)
  @temp = temp
end
#conversion method
def ctof
   temp * 1.8 + 32
end
end

#Kelvin class
class Kelvin
  attr_reader :temp
  KELVIN = 273
  def initialize(temp)
    @temp = temp
  end
  #celcius to kelvin conversion
  def ctok
    temp + KELVIN
  end
end

#print class
class Screen
  attr_reader :temp, :fahr ,:kelv
  #initialize method
def initialize (temp,fahr,kelv)
  @temp = temp
  @fahr = fahr
  @kelv = kelv
end
#print in regular text
def to_text
puts "It's currently #{temp}°C, #{fahr} degrees kelvin & #{kelv} degrees fahrenheit"
end
#convert to json string
def to_json
 puts "{celsius: #{temp},fahrenheit: #{fahr}, kelvin: #{kelv}}"
end
#convert to html code
def to_html
puts "<div>"
puts "    <div>#{temp}°C</div>"
puts "    <div>#{fahr}°F</div> "
puts "    <div>#{kelv}°K</div>"
puts "</div>"
end
end
