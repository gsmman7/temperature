class Read_url
  attr_reader :temperature
  #init class method
  def initialize (temperature)
    @temperature = temperature
  end
  
#url reading method
  def self.url_temperature(url)
    Net::HTTP.get(URI.parse(url)).to_f
  end

end
