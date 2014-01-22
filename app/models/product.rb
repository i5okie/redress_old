# Each Product will have some Attachments associated with it
# Each Product will have some Documents associated with it

class Product < ActiveRecord::Base
	belongs_to :category
	has_many :attached
	has_many :documented
	has_many :attachments, through: :attached
	has_many :documents, through: :documented
	
	accepts_nested_attributes_for :attachments, :allow_destroy => true, :reject_if => :all_blank
	accepts_nested_attributes_for :documents, :allow_destroy => true, :reject_if => :all_blank

	acts_as_taggable
	acts_as_taggable_on :apms, :applicables

	has_attached_file	:image, 
										:styles => { 
											:medium => "200x200>", 
											:thumb => "40x40>" 
										}, 
										:default_url => ":style/missing.png"

end