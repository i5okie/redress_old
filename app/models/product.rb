class Product < ActiveRecord::Base
	belongs_to :category
	has_many :attached
	has_many :documented
	has_many :attachments, through: :attached
	has_many :documents, through: :documented
	
	acts_as_taggable
	acts_as_taggable_on :apms, :applicables

	mount_uploader :image, ImageUploader
	accepts_nested_attributes_for :attached, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :attachments, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :documented, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :documents, :reject_if => :all_blank, :allow_destroy => true
end