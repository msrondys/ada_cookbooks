class CreateRecipeToSupplyRelationships < ActiveRecord::Migration
  def change
    create_table :recipe_to_supply_relationships do |t|
      t.integer :recipe_id
      t.integer :supply_id

      t.timestamps
    end
  end
end
