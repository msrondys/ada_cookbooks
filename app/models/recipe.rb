class Recipe < ActiveRecord::Base
  has_many :ingredient_to_recipe_relationships
  has_many :ingredients, through: :ingredient_to_recipe_relationships
end
