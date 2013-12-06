class Supply < ActiveRecord::Base
  has_many :recipe_to_supply_relationships
  has_many :recipes, through: :recipe_to_supply_relationships
end
