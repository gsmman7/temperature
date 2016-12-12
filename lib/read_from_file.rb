class Read_file
attr_reader :temperature
  #init class method
  def initialize
    $temperature
  end

#file reading method
  def file_temperature
    afile = File.new("data.txt","r")
    $temperature = afile.sysread(6).to_f
  end

end
