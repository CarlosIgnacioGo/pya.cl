class Category < ActiveRecord::Base
	has_and_belongs_to_many :services

	def has_service?
		self.services.blank? ? false : true
	end
end
