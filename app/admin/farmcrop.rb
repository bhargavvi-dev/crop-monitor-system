ActiveAdmin.register Farmcrop do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :farm_id, :crop_id, :from_date, :to_date
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
    column :from_date
    column :to_date
    actions
  end

end
