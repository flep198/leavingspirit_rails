class Product < ApplicationRecord

	has_many :purchases
	has_many :orders, through: :purchases

	#def cart_action(current_user_id)
  	#if $redis.sismember "cart#{current_user_id}", self.id
   # 	"Remove from"
  #	else
   # 	"Add to"
  	#end
	#end
end
