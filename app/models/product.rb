class Product < ActiveRecord::Base
	belongs_to :category
	has_many :attachments, through: :pattachments
	has_many :documents, through: :pdocuments
	
	acts_as_taggable
	acts_as_taggable_on :apms, :applicables

	mount_uploader :image, ImageUploader
end