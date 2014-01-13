class Document
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :filetype, type: String
  field :filelocation, type: String
end
