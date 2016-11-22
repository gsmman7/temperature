Gem::Specification.new do |s|
  s.name        = 'temperature_nvdb'
  s.version     = '1.0.0'
  s.date        = '2016-11-18'
  s.summary     = "commands to convert temperature!"
  s.description = "commandline application to convert temperatures from different sources, and output them in different ways"
  s.authors     = ["Nicolas Vandenbroucke"]
  s.email       = 'nicolas.vandenbroucke@vdb.be'
  s.files       = ["lib/temperature_converter_nicovdb.rb"]
  s.homepage    =
    'https://github.com/gsmman7/temperature.git'
  s.license       = 'MIT'
  s.executables  << "temp-conv"
end
