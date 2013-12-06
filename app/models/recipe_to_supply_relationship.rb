class RecipeToSupplyRelationship < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :supply
end
