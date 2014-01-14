class Video
  include Mongoid::Document
  embedded_in :vidz, polymorphic: true
  
  field :name, type: String
  field :description, type: String
  field :vidlink, type: String
end
