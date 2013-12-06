json.array!(@supplies) do |supply|
  json.extract! supply, :id, :name
  json.url supply_url(supply, format: :json)
end
