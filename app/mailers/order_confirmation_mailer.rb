class OrderConfirmationMailer < ApplicationMailer

	def order_confirmation_email
		@order = params[:order]

		mail(to:@order.email,bcc:"florian.eppel@gmx.de", subject: "Thanks for your order at Leaving Spirit (Order Nr "+@order.id.to_s+")")
		
	end

end
