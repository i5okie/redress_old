class Attachment
  include Mongoid::Document
  include Mongoid::Timestamps::Created  
  belongs_to :product

  mount_uploader :filelocation, DocumentUploader

  field :name
  field :description
  field :filetype
  field :filelocation
end
