class Video
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :vidlink, type: String
end
