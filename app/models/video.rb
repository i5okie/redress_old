class Video < ActiveRecord::Base
	has_many :prodvideo
	has_many :products, through: :prodvideo
end
