json.array!(@ds) do |d|
  json.extract! d, :id, :name, :address
  json.url d_url(d, format: :json)
end
