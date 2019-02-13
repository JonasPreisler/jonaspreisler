class Project < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :image_2, ImageUploader
	mount_uploader :image_3, ImageUploader
	mount_uploader :image_4, ImageUploader
	enum :status [:not_featured, :featured]
end
