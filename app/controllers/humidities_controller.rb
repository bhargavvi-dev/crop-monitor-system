class HumiditiesController < InheritedResources::Base

  private

    def humidity_params
      params.require(:humidity).permit(:farm_id, :crop_id, :humi_read)
    end
end

