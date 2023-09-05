ActiveAdmin.register Friend do

  permit_params :first_name, :last_name, :email, :phone_number, :address, :twitter, :user_id

  # permit_params do
  #   permitted = [:first_name, :last_name, :email, :phone_number, :address, :twitter, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
