class User < ApplicationRecord
	has_many :events, through: :attendants
	has_many :events
	after_create :welcome_send

	def welcome_send
	  UserMailer.welcome_email(self).deliver_now
	end

end
