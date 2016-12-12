require "./lib/converter"
require 'optparse'
#  input = ARGV.first.to_f

   temp = Converter.new

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

OptionParser.new do |opts|
  opts.banner = "Usage: ruby app.rb [options]"

  opts.on("-t [FLOAT]","--temperature [FLOAT]",Float,"Give number to convert") do |t|
    # @newt = Celsius.new(t).normal
    # @newf = Fahrenheit.new(@newt).ctof
    # @newk = Kelvin.new(@newt).ctok
    temp.cmd t

  end
  opts.on("-f","--file","convert from file") do |f|
    # @newt =Celsius.file_temperature
    # @newf = Fahrenheit.new(@newt).ctof
    # @newk = Kelvin.new(@newt).ctok
     temp.file_temperature

  end
  opts.on("-u","--url","convert from url") do |u|
    # @newt =Celsius.url_temperature ("http://labict.be/software-engineering/temperature/api/temperature/fake")
    # @newf = Fahrenheit.new(@newt).ctof
    # @newk = Kelvin.new(@newt).ctok
     temp.url_temperature('http://labict.be/software-engineering/temperature/api/temperature/fake')
  end

  opts.on("-c","--cmd","give output in plain text") do |c|
  # puts Screen.new(@newt,@newf,@newk).to_text
  puts temp.to_text
  end

  opts.on("-j","--json","give output in JSON string") do |j|
  # puts Screen.new(@newt,@newf,@newk).to_json
  puts temp.to_json
  end

  opts.on("-h","--html","give output in html format") do |h|
  # puts Screen.new(@newt,@newf,@newk).to_html
  puts temp.to_html
  end

  opts.on("-m","--mqtt","read input from mqtt") do |m|
  # puts Screen.new(@newt,@newf,@newk).to_html
  temp.mqtt_temperature
  end

end.parse!
