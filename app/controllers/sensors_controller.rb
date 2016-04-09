class SensorsController < InheritedResources::Base

  private

    def sensor_params
      params.require(:sensor).permit(:name, :description)
    end
end

