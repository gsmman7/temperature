

class Text
attr_reader :temperature

def initialize (temp,fahr,kelv)
  @temp = temp
  @fahr = fahr
  @kelv = kelv
end

def put_text
  tmp = Conv.new
puts "It's currently" tmp.normal.to_s +°"C,"+ tmp.ctof.to_s "°F and" + tmp.ctok.to_s + "°K"
end

end
