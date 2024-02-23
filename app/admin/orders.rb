ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :last_name, :email, :address_line1, :address_line2, :country, :newsletter, :paid
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :email, :address_line1, :address_line2, :country, :newsletter, :buyer_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  show do |order|
    panel("Order") do
      table_for(order) do
        column "Name" do |i|
          i.first_name.to_s + " " + i.last_name.to_s
        end
        column "Address" do |i|
          i.address_line1.to_s + " " + order.address_line2.to_s + " " + order.country
        end
      end
    end
    div do      
      panel("Items") do
        table_for(order.purchases) do
          column "Name" do |i| 
            i.product.name
          end
          column "Price" do |i| 
            i.product.price.to_s
          end
          column "Amount" do |i|
            i.count.to_s
          end
        end
      end
    end
  end
  
end
