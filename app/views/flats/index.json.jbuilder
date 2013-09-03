json.array!(@flats) do |flat|
  json.extract! flat, :name
  json.url flat_url(flat, format: :json)
end
