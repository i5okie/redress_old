class Attachment < ActiveRecord::Base
	has_many :attached
	has_many :products, through: :attached
end