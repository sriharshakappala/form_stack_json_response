class CustomerMailer < ApplicationMailer

	default from: "from@example.com"
	
	def send_confirmation_mailer(user)
		mail(to: user, subject: 'Get stuff done instantly!')
	end

end
