class AddToSToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :terms_of_service, :boolean
  end
end
