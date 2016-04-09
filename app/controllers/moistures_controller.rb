class MoisturesController < InheritedResources::Base

  private

    def moisture_params
      params.require(:moisture).permit(:farm_id, :crop_id, :mois_read)
    end
end

