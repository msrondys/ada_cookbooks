json.array!(@cookbooks) do |cookbook|
  json.extract! cookbook, :id, :name, :description
  json.url cookbook_url(cookbook, format: :json)
end
