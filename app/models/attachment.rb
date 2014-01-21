# Each Attachment will be associated with some Products

class Attachment < ActiveRecord::Base
	has_many :attached
	has_many :products, through: :attached

	has_attached_file :file
	validates :file, :attachment_presence => true
	validates_with AttachmentPresenceValidator, :attributes => :file
end