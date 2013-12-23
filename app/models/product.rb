class Product
  include Mongoid::Document
  include Mongoid::Taggable


  field :name
  field :manufacturer
  field :model
  field :description
  field :link
end
