class Service < ActiveRecord::Base
	include AASM

	has_many :comments
	has_and_belongs_to_many :categories
	has_and_belongs_to_many :additionals
	belongs_to :user

	validates :name, presence: true
	validates :email, presence: true
	validates :description, presence: true
	validates :phone, presence: true
	
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
			where("(services.country LIKE ? ) AND state = 'published'","%#{search}%")			
		end
	end

	def count_photos
		acum_photos = 0

		if self.photo
			acum_photos += 1
		elsif self.photo_2
			acum_photos += 1
		elsif self.photo_3
			acum_photos += 1
		elsif self.photo_4
			acum_photos += 1
		elsif self.photo_5
			acum_photos += 1
		end

		return acum_photos
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
