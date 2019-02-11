class Attendance < ApplicationRecord
	belongs_to :user
	belongs_to :event
	after_create :welcome_send

	def welcome_send
	  UserMailer.welcome_email(self).deliver_now
	end

end
