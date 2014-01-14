class Attachment
  include Mongoid::Document
  include Mongoid::Timestamps::Created  
  embedded_in :archive, polymorphic: true
  mount_uploader :filelocation, DocumentUploader

  field :name
  field :description
  field :filetype
  field :filelocation
end
