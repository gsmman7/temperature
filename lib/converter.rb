
# #This is the class where all the temperature reading happens.
# #In  this class, there are 4 seperate ways to read the temperature
# #These are methods to read from the command line,a txt file, url and finally mqtt
# class Celsius
# attr_reader :temperature
# #init class method
# def initialize (temperature)
#   @temperature = temperature
# end
# # Return the temperature value in degrees celsius
#     # @return [Number] temperature in degrees celsius
#     # @example
#     #   @newt = Celsius.new(t).normal
# def normal
# temperature
# end
# #reading file  method
# def self.file_temperature
#   afile = File.new("data.txt","r")
#   afile.sysread(6).to_f
# end
# #reading url method
# def self.url_temperature(url)
#   Net::HTTP.get(URI.parse(url)).to_f
# end
# #reading from mqqt method
# def mqtt_temperature
#    MQTT::Client.connect(
#           :host => 'staging.thethingsnetwork.org',
#           :port => '1883',
#           :username => '70B3D57ED00012B2',
#           :password => 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
#         ) do |c|
#           c.get(sensor_id) do |topic,message|
#         obj = JSON.parse("#{message}")
#         $temperature = obj['fields']['temperature']
#         #Only listen until temperature is printed once
#         break if message[0,1] != nil
#           end
#       end
# end
#
# end
#
# #fahrenheit class
# class Fahrenheit
#   attr_reader :temp
#   #initialize method
# def initialize (temp)
#   @temp = temp
# end
# #conversion method
# def ctof
#    temp * 1.8 + 32
# end
# end
#
# #Kelvin class
# class Kelvin
#   attr_reader :temp
#   KELVIN = 273
#   def initialize(temp)
#     @temp = temp
#   end
#   #celcius to kelvin conversion
#   def ctok
#     temp + KELVIN
#   end
# end
#
# #print class
# class Screen
#   attr_reader :temp, :fahr ,:kelv
#   #initialize method
# def initialize (temp,fahr,kelv)
#   @temp = temp
#   @fahr = fahr
#   @kelv = kelv
# end
# # Printing all converted values in normal text
#     # @return [String] temperature converted in plain text
#     # @example
#     # puts Screen.new(@newt,@newf,@newk).to_text
# def to_text
# puts "It's currently #{temp}°C, #{fahr} degrees kelvin & #{kelv} degrees fahrenheit"
# end
# #convert to json string
# def to_json
#  puts "{celsius: #{temp},fahrenheit: #{fahr}, kelvin: #{kelv}}"
# end
# #convert to html code
# def to_html
# puts "<div>"
# puts "    <div>#{temp}°C</div>"
# puts "    <div>#{fahr}°F</div> "
# puts "    <div>#{kelv}°K</div>"
# puts "</div>"
# end
# end

class Converter

def to_text
newtemp = Text.new
puts newtemp.put_text
end

def to_json
newtemp = Json.new
puts newtemp.put_json
end

def to_html
newtemp = Html.new
puts newtemp.put_html
end

def cmd
newtemp = Rcmd.new
newtemp.normal
end

def file_temperature
newtemp = Read_file.new
newtemp.file_temperature
end

def url_temperature
newtemp = Read_url.new
newtemp.url_temperature
end


end
