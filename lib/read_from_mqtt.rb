class Read_mqtt

  attr_reader :temperature
  #init class method
  def initialize (temperature)
    @temperature = temperature
  end

  #reading from mqqt method
  def mqtt_temperature
     MQTT::Client.connect(
            :host => 'staging.thethingsnetwork.org',
            :port => '1883',
            :username => '70B3D57ED00012B2',
            :password => 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
          ) do |c|
            c.get(sensor_id) do |topic,message|
          obj = JSON.parse("#{message}")
          $temperature = obj['fields']['temperature']
          #Only listen until temperature is printed once
          break if message[0,1] != nil
            end
        end
  end

end
