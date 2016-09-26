class TemperatureConverter
attr_accessor :temperature
attr_accessor :fahrenheit
attr_accessor :kelvin

def initialize (temperature)
#  puts "what is the temperature?"
#  temperature = gets.to_i    #voor nadien nog een input te kunnen doorgeven
  @temperature = temperature
end

def file
  afile = File.new("data.txt","r")
  content = afile.sysread(6).to_f
  @kelvin = content + 273
  @fahrenheit = content * 1.8 + 32
  puts "It's currently #{kelvin} degrees kelvin & #{fahrenheit} degrees fahrenheit"
end

def conversion_cmd
  @kelvin = temperature + 273
  puts "It's currently #{kelvin} degrees kelvin"
  @fahrenheit = temperature * 1.8 + 32
  puts "Its currently #{fahrenheit} degrees fahrenheit"
end

def give_txt
 File.write('./temp.txt', 'temperature: ')
end

def give_json

end

def give_html

end

def read_html

end

end

if __FILE__ == $0
  input = ARGV.first.to_f
  temp = TemperatureConverter.new input
 temp.conversion_cmd
#  temp.file
#  temp.give_txt

end
