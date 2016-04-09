ActiveAdmin.register Crop do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :ideal_temp, :ideal_humi, :ideal_mois, :min_temp, :max_temp, :min_humi, :max_humi, :min_mois, :max_mois
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
