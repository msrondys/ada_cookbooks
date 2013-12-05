class CreateCookbooksToRecipesRelationships < ActiveRecord::Migration
  def change
    create_table :cookbooks_to_recipes_relationships do |t|
      t.integer :cookbook_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
