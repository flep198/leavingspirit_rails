class CreateOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :address_line1, null: false
      t.string :address_line2
      t.string :country, null: false
      t.boolean :newsletter, null: false, default: true
      t.integer :buyer_id, null: false
      t.boolean :paid, default: false

      t.timestamps
    end
  end
end
