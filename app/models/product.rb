class Product
  include Mongoid::Document
  include Mongoid::TagsArentHard
  mount_uploader :image, ImageUploader
  embeds_many :attachments

  field :name
  field :manufacturer
  field :model
  field :description
  field :link
  field :category
  field :image

  taggable_with :tags, separator: ","
  taggable_with :apms, as: :applicables, separator: ","

end
