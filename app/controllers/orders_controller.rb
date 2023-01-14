class OrdersController < ApplicationController
  
  before_action :check_cart!, only: [:create]

  def new
    @order = Order.new
  end

# POST /frequencies or /frequencies.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        session[:order_id] = @order.id 
        session[:total_price] = current_user.cart_total_price
        current_user.get_cart_products.uniq.each {|product| purchase(product,@order.id,current_user.get_number_of_product_in_cart(product))}
        $redis.del "cart#{current_user.id}"
        format.html { redirect_to orders_summary_path, order: @order }        
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def summary
  end

  private


    def purchase(product,order_id,count)
      Order.find(order_id).purchases << Purchase.new(product_id: product.id, order_id: order_id, count: count)
    end


      # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:first_name,:last_name,:email,:address_line1,:address_line2,:country,:newsletter,:buyer_id)
    end


    def check_cart!
      if current_user.get_cart_products.blank?
        redirect_to root_url, alert: "Please add some items to your cart before processing your transaction!"
      end
  end
end