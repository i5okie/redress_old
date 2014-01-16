class Attachment < ActiveRecord::Base
	has_many :products, through: :pattachments
end