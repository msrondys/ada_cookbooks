class Recipe < ActiveRecord::Base
  has_many :ingredient_to_recipe_relationships
  has_many :ingredients, through: :ingredient_to_recipe_relationships
  has_many :cookbooks_to_recipes_relationships
  has_many :cookbooks, through: :cookbooks_to_recipes_relationships
  has_many :recipe_to_supply_relationships
  has_many :supplies, through: :recipe_to_supply_relationships
end
