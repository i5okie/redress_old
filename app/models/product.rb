class Product
  include Mongoid::Document
  include Mongoid::TaggableWithContext
  mount_uploader :image, ImageUploader

  field :name
  field :manufacturer
  field :model
  field :description
  field :link
  field :category
  field :image

  taggable :tags, separator: ','

end
