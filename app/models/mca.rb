class Mca < ApplicationRecord
	validates :first_name,presence:true
	def name
		"#{first_name} #{last_name}"
	end
end
