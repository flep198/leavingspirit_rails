class Order < ApplicationRecord
	has_many :purchases, foreign_key: :order_id
	has_many :products, through: :purchases
	belongs_to :buyer, class_name:"User"
end