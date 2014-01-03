class Product
  include Mongoid::Document
  include Mongoid::TagsArentHard
  mount_uploader :image, ImageUploader

  field :name
  field :manufacturer
  field :model
  field :description
  field :link
  field :category
  field :image

  taggable_with :tags, separator: ","

end
