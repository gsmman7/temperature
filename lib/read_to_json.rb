require 'json'
require "conv"
class Json
  attr_reader :temperature
  #initialize method

def put_json
  tmp = Conv.new
 puts "{celsius: " + tmp.normal.to_s +",fahrenheit: "+tmp.ctof.to_s+", kelvin: "+tmp.ctof.to_s+"}"
end

end
