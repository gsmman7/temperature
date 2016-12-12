require "./lib/conv"
class Html

  attr_reader :temperature
  #initialize method

def put_html
  tmp = Convert.new
  var1 = tmp.normal
  var2 = tmp.ctof
  var3 = tmp.ctok
puts "<div>"
puts "    <div>#{var1}°C</div>"
puts "    <div> #{var2}°F</div> "
puts "    <div> #{var3}°K</div>"
puts "</div>"
end

end
