class Attached < ActiveRecord::Base
	belongs_to :attachment
	belongs_to :product
end
