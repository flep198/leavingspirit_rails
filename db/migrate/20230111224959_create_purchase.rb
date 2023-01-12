class CreatePurchase< ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :count

      t.timestamps
    end
    add_index :purchases, [:product_id, :order_id], unique: true
  end
end
