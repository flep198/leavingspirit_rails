class Order < ApplicationRecord
	has_many :purchases, foreign_key: :order_id
	has_many :products, through: :purchases
	belongs_to :buyer, class_name:"User"
  validates_presence_of :terms_of_service, accpetance: { message: "must be accepted"}
  validates_presence_of :first_name, acceptance: { message: "must be entered"}
  validates_presence_of :last_name, acceptance: { message: "must be entered"}
  validates_presence_of :email, acceptance: { message: "must be entered"}
  validates_presence_of :country, acceptance: { message: "must be entered"}
  validates_presence_of :address_line1, acceptance: { message: "must be entered"} 

  def total_price
    total_price=0
    self.purchases.each do |purchase|
		total_price=total_price+purchase.product.price*purchase.count
    end
    return total_price
  end 
end