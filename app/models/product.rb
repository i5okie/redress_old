class Product < ActiveRecord::Base
	belongs_to :category
	has_many :attached, dependent: :destroy
	has_many :documented, dependent: :destroy
	has_many :attachments, through: :attached
	has_many :documents, through: :documented
	
	acts_as_taggable
	acts_as_taggable_on :apms, :applicables

	has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "40x40>" }, :default_url => ":style/missing.png"

	accepts_nested_attributes_for :attached, :allow_destroy => true
	accepts_nested_attributes_for :attachments, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :documented, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :documents, :reject_if => :all_blank, :allow_destroy => true
end