require 'json'
require "./lib/conv"
class Json
  attr_reader :temperature
  #initialize method

def put_json
  tmp = Convert.new
  var1 = tmp.normal
  var2 = tmp.ctof
  var3 = tmp.ctok
 puts "{celsius:#{var1} ,fahrenheit:#{var2} , kelvin:#{var3} }"
end

end
