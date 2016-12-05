class Read_file
attr_reader :temperature
  #init class method
  def initialize (temperature)
    @temperature = temperature
  end
  
#file reading method
  def self.file_temperature
    afile = File.new("data.txt","r")
    afile.sysread(6).to_f
  end

end
