# Each Attachment will be associated with some Products

class Attachment < ActiveRecord::Base
	resourcify

	has_many :attached
	has_many :products, through: :attached

	has_attached_file :file
	validates :file, :attachment_presence => true
	# validates_with AttachmentPresenceValidator, :attributes => :file

  def display_name
    self.name.present? ? self.name : "No Name"
  end

end