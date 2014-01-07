json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :title, :description, :document
  json.url attachment_url(attachment, format: :json)
end
