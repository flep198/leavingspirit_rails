class TransactionsController < ApplicationController

  def new
    gon.client_token = generate_client_token
  end

  def create
    @result = Braintree::Transaction.sale(
              amount: session[:total_price],
              payment_method_nonce: params[:payment_method_nonce])
    if @result.success?
      current_user.purchase_cart_products!(session[:order_id])
      session[:order_id]=nil
      session[:total_price]=0
      redirect_to root_url, notice: "Congratulations! Your transaction has been successful!"
    else
      Order.destroy(session[:order_id])
      session[:order_id]=nil
      session[:total_price]=0
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
    end
  end

  private

  def generate_client_token
    Braintree::ClientToken.generate
  end

  def check_cart!
    if current_user.get_cart_products.blank?
      redirect_to root_url, alert: "Please add some items to your cart before processing your transaction!"
    end
  end
end
