class FarmsController < InheritedResources::Base

  private

    def farm_params
      params.require(:farm).permit(:farmer_id, :location, :description)
    end
end

