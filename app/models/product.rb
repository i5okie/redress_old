class Product
  include Mongoid::Document
  field :name, type: String
  field :manufacturer, type: String
  field :model, type: String
  field :description, type: String
end
