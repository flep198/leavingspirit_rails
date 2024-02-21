class ChargesController < ApplicationController
  
  def new
    @amount = (session[:total_price].to_f*100).to_i


    @payment_intent = Stripe::PaymentIntent.create({
    amount: @amount,
    currency: 'eur',
    automatic_payment_methods: {enabled: true},
    })

  end

  def create 
  end

end