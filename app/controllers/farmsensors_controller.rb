class FarmsensorsController < InheritedResources::Base

  private

    def farmsensor_params
      params.require(:farmsensor).permit(:farm_id, :sensor_id)
    end
end

