class Prodvideo < ActiveRecord::Base
	belongs_to :video
	belongs_to :product
end
