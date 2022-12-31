class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :purchases, foreign_key: :buyer_id
  has_many :products, through: :purchases

  def cart_count
    $redis.llen "cart#{id}"
  end

  def cart_total_price
    total_price = 0
    get_cart_products.each {|product| total_price+=product.price*get_number_of_product_in_cart(product)}
    sprintf('%.2f', total_price.round(2))
  end

  def get_cart_products
    cart_ids = $redis.lrange "cart#{id}", 0, -1
    Product.find(cart_ids)
  end

  def get_number_of_product_in_cart product
    cart_ids = $redis.lrange "cart#{id}", 0, -1
    cart_ids = cart_ids.map(&:to_i)
    product_id = product.id
    cart_ids.count(product_id)
  end

  def purchase_cart_products!
    get_cart_products.each {|product| purchase(product)}
    $redis.del "cart#{id}"
  end

  def purchase(product)
    products << product unless purchase?(product)
  end

  def purchase?(product)
    products.include?(product)
  end

end
