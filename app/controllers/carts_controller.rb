class CartsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def show
    cart_ids = $redis.lrange current_user_cart, 0, -1
    @cart_products = Product.find(cart_ids)
  end

  def add
    $redis.lpush current_user_cart, params[:product_id]
    render json: current_user.cart_count, status: 200
  end

  def remove
    $redis.lrem current_user_cart, 1, params[:product_id]
    render json: current_user.cart_count, status: 200
  end

  private

  def current_user_cart
    "cart#{current_user.id}"
  end
end
