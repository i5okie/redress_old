class Attachment < ActiveRecord::Base
	has_many :products, through: :attached
end