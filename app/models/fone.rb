class Fone < ActiveRecord::Base
	after_create :send_mail_to_customer

	def send_mail_to_customer
		json_string = JSON.parse(self.json_string)
		puts json_string
		CustomerMailer.send_confirmation_mailer(json_string["Email"]).deliver_now
	end
end
