class User < ApplicationRecord
	has_many :events, through: :attendants
	has_many :events
end
