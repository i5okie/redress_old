json.array!(@videos) do |video|
  json.extract! video, :id, :name, :description, :source
  json.url video_url(video, format: :json)
end
