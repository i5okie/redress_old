class Document
  include Mongoid::Document
  embedded_in :guides, polymorphic: true


  field :name, type: String
  field :description, type: String
  field :filetype, type: String
  field :filelocation, type: String
end
