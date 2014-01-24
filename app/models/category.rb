class Category < ActiveRecord::Base
	has_many :products
	resourcify
end
