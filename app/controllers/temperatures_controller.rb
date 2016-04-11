class TemperaturesController < InheritedResources::Base
#Read url or params and find out temperature and sensor id
#From sensor id - find out farm_id
#create object of temperature and save it to database
def readings
	
	s = Sensor.find(params[:sensor_id])
	farm = s.farm
	t = Temperature.new
	t.sensor_id = s.id
	t.farm_id =  farm.id
	t.crop_id = farm.crop.id
	t.temp_read = params[:temp_read]
	t.humi_read = params[:humi_read]
	t.save
end

  private

    def temperature_params
      params.require(:temperature).permit(:farm_id, :crop_id, :temp_read,:sensor_id,:humi_read)
    end
end

