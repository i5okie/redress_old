class Document < ActiveRecord::Base
	has_many :documented
	has_many :products, through: :documented

	has_attached_file :document
end
