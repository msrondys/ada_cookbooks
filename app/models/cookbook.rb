class Cookbook < ActiveRecord::Base
  has_many :cookbooks_to_recipes_relationships
  has_many :recipes, through: :cookbooks_to_recipes_relationships
end
