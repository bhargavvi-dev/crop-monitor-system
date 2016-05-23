ActiveAdmin.register Temperature do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :farm_id, :crop_id, :sensor_id, :temp_read, :humi_read
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
index do
    selectable_column
    id_column
    column :farm_id
    column :crop_id
    column :sensor_id
    column :temp_read
    column :humi_read
    actions
  end


end
