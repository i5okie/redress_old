class Document < ActiveRecord::Base
	has_many :products, through: :documented
end
