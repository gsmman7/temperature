require 'net/http'
require 'uri'

class Read_url
  attr_reader :temperature
  #init class method
  def initialize
    $temperature
  end

#url reading method
  def url_temperature(url)
    $temperature = Net::HTTP.get(URI.parse(url)).to_f
  end

end
