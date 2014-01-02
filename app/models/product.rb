class Product
  include Mongoid::Document
  include Mongoid::Taggable
  mount_uploader :image, ImageUploader

  field :name
  field :manufacturer
  field :model
  field :description
  field :link
  field :image
end
