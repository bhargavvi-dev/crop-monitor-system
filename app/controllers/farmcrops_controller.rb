class FarmcropsController < InheritedResources::Base

  private

    def farmcrop_params
      params.require(:farmcrop).permit(:farm_id, :crop_id, :from_date, :to_date)
    end
end

