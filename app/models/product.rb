class Product < ActiveRecord::Base
	belongs_to :category
	
	acts_as_taggable
	acts_as_taggable_on :apms, :applicables

	mount_uploader :image, ImageUploader
end