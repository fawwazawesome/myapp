class Entry < ApplicationRecord
 	belongs_to :user
 	

 	mount_uploaders :images, ImageUploader
	scope :description, -> (description) { where description: description }
	
end