class Purchase < ApplicationRecord
	belongs_to :product
	belongs_to :order, class_name:'Order'
end
