require "./converter.rb"
require 'net/http'
require 'uri'

  input = ARGV.first.to_f
   temp = TemperatureConverter.new input
  temp.conversion_cmd
  temp.give_json
  temp.give_html
#file version
  temp.file
  temp.give_json
  temp.give_html
#url version
 temp.open ("http://labict.be/software-engineering/temperature/api/temperature/fake")
 temp.give_json
 temp.give_html
