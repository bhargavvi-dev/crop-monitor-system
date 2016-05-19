class TemperaturesController < InheritedResources::Base
#Read url or params and find out temperature and sensor id
#From sensor id - find out farm_id
#create object of temperature and save it to database
def readings
	
	s = Sensor.find(params[:sensor_id])
	farmer = s.farm.farmer
	t = Temperature.new
	t.sensor_id = s.id
	t.farm_id =  s.farm.id
	t.crop_id = s.farm.crop.id
	t.temp_read = params[:temp_read]
	t.humi_read = params[:humi_read]
	t.save

	minT = s.farm.crop.min_temp
	maxT = s.farm.crop.max_temp
	minH = s.farm.crop.min_humi
	maxH = s.farm.crop.min_humi

  if minT > t.temp_read  	 
    ModelMailer.MinT(farmer).deliver_now
    redirect_to root_path
  elsif  maxT < t.temp_read
	ModelMailer.MaxT(farmer).deliver_now
	redirect_to root_path
  end


end

  private

    def temperature_params
      params.require(:temperature).permit(:farm_id, :crop_id, :temp_read,:sensor_id,:humi_read)
    end
end