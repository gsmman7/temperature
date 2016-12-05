
class Html

  attr_reader :temperature
  #initialize method

def put_html
  tmp = Conv.new
puts "<div>"
puts "    <div>"+ tmp.normal.to_s +"°C</div>"
puts "    <div>"+ tmp.ctof.to_s +"°F</div> "
puts "    <div>"+ tmp.ctok.to_s +"°K</div>"
puts "</div>"
end

end
