json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :name, :description, :filetype, :filelocation
  json.url attachment_url(attachment, format: :json)
end
