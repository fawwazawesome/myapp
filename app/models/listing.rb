class Listing < ApplicationRecord
 	belongs_to :user
 	has_many :reservations

 	mount_uploaders :images, ImageUploader
	scope :description, -> (description) { where description: description }
	
end