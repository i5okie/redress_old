json.array!(@documents) do |document|
  json.extract! document, :id, :name, :description, :filetype, :filelocation
  json.url document_url(document, format: :json)
end
