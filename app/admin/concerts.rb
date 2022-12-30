ActiveAdmin.register Concert do

  permit_params :date, :time, :fb_link, :coordinates, :location_name, :ticket_link, :location_link, :title

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :date, :time, :fb_link, :coordinates, :location_name, :ticket_link, :location_link
  #
  # or
  #
  # permit_params do
  #   permitted = [:date, :time, :fb_link, :coordinates, :location_name, :ticket_link, :location_link]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
