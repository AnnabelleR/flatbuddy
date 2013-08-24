json.array!(@flatmates) do |flatmate|
  json.extract! flatmate, :name
  json.url flatmate_url(flatmate, format: :json)
end
