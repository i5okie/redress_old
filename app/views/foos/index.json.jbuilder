json.array!(@foos) do |foo|
  json.extract! foo, :id, :blob, :bleep
  json.url foo_url(foo, format: :json)
end
