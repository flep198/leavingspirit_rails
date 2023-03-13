class OrderConfirmationMailer < ApplicationMailer

	def order_confirmation_email
		@user = params[:user]
		@order = params[:order]

		mail(to:@order.email, subject: "Thanks for your order!")
	end

end
