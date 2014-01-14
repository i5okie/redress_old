class Product
  include Mongoid::Document
  include Mongoid::TagsArentHard
  mount_uploader :image, ImageUploader
  embeds_many :attachments, as: :archive
  embeds_many :documents, as: :guides
  embeds_many :videos, as: :vidz
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