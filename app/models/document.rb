class Document < ActiveRecord::Base

	has_many :documented
	has_many :products, through: :documented

	has_attached_file :doc
	validates :doc, :attachment_presence => true
  

	def display_name
		self.name.present? ? self.name : "No Name"
	end
  
end