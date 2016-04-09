ActiveAdmin.register Farmer do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :address,:phone, :email, :password, :password_confirmation
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
    column :email
    column :name
    column :address
    column :phone
    
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :address
      f.input :email
      f.input :phone
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
