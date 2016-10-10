require "./lib/converter.rb"
require 'net/http'
require 'uri'

  input = ARGV.first.to_f
   temp = TemperatureConverter.new input
  #text conversion
  temp.commandline_temperature
  temp.to_text
  temp.to_json
  temp.to_html
#file version
  temp.file_temperature
  temp.to_text
  temp.to_json
  temp.to_html
#url version
 temp.url_temperature ("http://labict.be/software-engineering/temperature/api/temperature/fake")
 temp.to_text
 temp.to_json
 temp.to_html
