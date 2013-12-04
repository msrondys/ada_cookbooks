class CreateIngredientToRecipeRelationships < ActiveRecord::Migration
  def change
    create_table :ingredient_to_recipe_relationships do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
      t.timestamps
    end
  end
end
