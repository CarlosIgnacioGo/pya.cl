class Service < ActiveRecord::Base
	include AASM

	has_many :comments
	has_and_belongs_to_many :categories
	has_and_belongs_to_many :additionals
	belongs_to :user

	#Metodo que actualiza las visitas
	def update_visit_count
		self.update(visit_count: self.visit_count += 1)
	end

	#
	delegate :email, to: :user, prefix: :cat

	#
	mount_uploader :photo, PhotoUploader
	mount_uploader :photo_2, PhotoUploader
	mount_uploader :photo_3, PhotoUploader
	mount_uploader :photo_4, PhotoUploader
	mount_uploader :photo_5, PhotoUploader

	#
	def self.search(search)
		if search.present?
			where("(services.title LIKE ? OR services.description LIKE ?) AND state = 'published'","%#{search}%", "%#{search}%")			
		else
			all
		end
	end

	aasm column: "state" do
		state :in_draft, initial: true
		state :published

		event :publish do
			transitions :from => :in_draft, :to => :published
		end

		event :unpublish do
			transitions :from => :published, :to => :in_draft
		end
	end

	def average
		if comments.average(:vote).nil?
			0
		else 
			comments.average(:vote).round(1)
		end
	end
end
