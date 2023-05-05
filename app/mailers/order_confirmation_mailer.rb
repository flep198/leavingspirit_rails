class OrderConfirmationMailer < ApplicationMailer

	def order_confirmation_email
		@order = params[:order]

		mail(to:@order.email, subject: "Thanks for your order at Leaving Spirit (Order Nr "+@order.id.to_s+")")
		mail(to:"florian.eppel@gmx.de", subject: "New Order for Leaving Spirit")
	end

end
