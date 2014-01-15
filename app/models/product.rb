class Product < ActiveRecord::Base
	belongs_to :category
	
	acts_as_taggable
	acts_as_taggable_on :apms, :applicatbles

	mount_uploader :image, ImageUploader
end
