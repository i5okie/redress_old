class Document < ActiveRecord::Base
	has_many :documented
	has_many :products, through: :documented

	mount_uploader :filelocation, DocumentUploader
end
