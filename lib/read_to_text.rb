
require "./lib/conv"

class Text
attr_reader :temperature


def put_text
  tmp = Convert.new
  var1 = tmp.normal
  var2 = tmp.ctof
  var3 = tmp.ctok
puts "It's currently #{var1}°C, #{var2}°F and #{var3}°K"
end

end
