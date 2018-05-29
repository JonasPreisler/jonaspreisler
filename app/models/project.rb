class Project < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :service
end
