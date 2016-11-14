require "./lib/converter.rb"
require 'net/http'
require 'uri'
require 'mqtt'
require 'rubygems'

  input = ARGV.first.to_f
  # temp = TemperatureConverter.new input

# #cmd
# temp.to_text
# temp.to_json
# temp.to_html
# #file
# temp.file_temperature
# temp.to_text
# temp.to_json
# temp.to_html
# #url
# temp.url_temperature ("http://labict.be/software-engineering/temperature/api/temperature/fake")
# temp.to_text
# temp.to_json
# temp.to_html

@newt = Celsius.new(input).normal
@newf = Fahrenheit.new(@newt).ctof
@newk = Kelvin.new(@newt).ctok
puts Screen.new(@newt,@newf,@newk).to_text
puts Screen.new(@newt,@newf,@newk).to_json
puts Screen.new(@newt,@newf,@newk).to_html


@newt =Celsius.file_temperature
@newf = Fahrenheit.new(@newt).ctof
@newk = Kelvin.new(@newt).ctok
puts Screen.new(@newt,@newf,@newk).to_text
puts Screen.new(@newt,@newf,@newk).to_json
puts Screen.new(@newt,@newf,@newk).to_html

@newt =Celsius.url_temperature ("http://labict.be/software-engineering/temperature/api/temperature/fake")
@newf = Fahrenheit.new(@newt).ctof
@newk = Kelvin.new(@newt).ctok
puts Screen.new(@newt,@newf,@newk).to_text
puts Screen.new(@newt,@newf,@newk).to_json
puts Screen.new(@newt,@newf,@newk).to_html

@newt =Celsius.mqtt_temperature
@newf = Fahrenheit.new(@newt).ctof
@newk = Kelvin.new(@newt).ctok
puts Screen.new(@newt,@newf,@newk).to_text
puts Screen.new(@newt,@newf,@newk).to_json
puts Screen.new(@newt,@newf,@newk).to_html
