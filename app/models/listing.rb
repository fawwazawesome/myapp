class Listing < ApplicationRecord
 	belongs_to :user
 	has_many :reservations

 	mount_uploaders :images, ImageUploader

	scope :name, -> (property) { where name: property }
	scope :country, -> (country) { where("country ILIKE ?", "%#{country}%") }
	scope :description, -> (rooms) { where description: description }
	
end