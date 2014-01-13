class Product
  include Mongoid::Document
  include Mongoid::TagsArentHard
  mount_uploader :image, ImageUploader
  embeds_many :attachments
  belongs_to :category

  field :name
  field :manufacturer
  field :model
  field :description
  field :link
  field :image

  taggable_with :tags, separator: ","
  taggable_with :apms, as: :applicables, separator: ","

end
