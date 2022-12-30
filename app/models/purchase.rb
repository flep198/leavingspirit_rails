class Purchase < ApplicationRecord
	belong_to :product
	belongs_to :buyer, class_name:'User'

end
