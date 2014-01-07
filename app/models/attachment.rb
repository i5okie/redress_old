class Attachment
  include Mongoid::Document
  include Mongoid::TagsArentHard
  include Mongoid::Timestamps::Created  

  embedded_in :product
  
  field :title
  field :description
  field :document

  mount_uploader :document, DocumentUploader

  taggable_with :tags, separator: ","

end