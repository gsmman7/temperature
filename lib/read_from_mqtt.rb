require 'mqqt'
require 'rubygems'
require 'json'
class Read_mqtt

  attr_reader :temperature
  #init class method

  #reading from mqqt method
  def mqtt
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
          c.disconnect()
          end
      end
  end
end
