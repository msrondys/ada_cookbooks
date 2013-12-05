json.array!(@cookbooks_to_recipes_relationships) do |cookbooks_to_recipes_relationship|
  json.extract! cookbooks_to_recipes_relationship, :id, :cookbook_id, :recipe_id
  json.url cookbooks_to_recipes_relationship_url(cookbooks_to_recipes_relationship, format: :json)
end
