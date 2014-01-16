class Product < ActiveRecord::Base
	belongs_to :category
	has_many :attachments, through: :attached
	has_many :documents, through: :documented
	
	acts_as_taggable
	acts_as_taggable_on :apms, :applicables

	mount_uploader :image, ImageUploader
end