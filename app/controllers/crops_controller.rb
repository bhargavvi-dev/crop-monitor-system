class CropsController < InheritedResources::Base

  private

    def crop_params
      params.require(:crop).permit(:name, :ideal_temp, :ideal_humi, :ideal_mois, :min_temp, :max_temp, :min_humi, :max_humi, :min_mois, :max_mois)
    end
end

