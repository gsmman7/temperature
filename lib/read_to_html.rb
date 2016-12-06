require "./lib/conv"
class Html

  attr_reader :temperature
  #initialize method

def put_html
  tmp = Conv.new
puts "<div>"
puts "    <div>"+ tmp.normal + "°C</div>"
puts "    <div>"+ tmp.ctof +"°F</div> "
puts "    <div>"+ tmp.ctok +"°K</div>"
puts "</div>"
end

end
