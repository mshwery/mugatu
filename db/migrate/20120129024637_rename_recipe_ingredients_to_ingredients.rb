class RenameRecipeIngredientsToIngredients < ActiveRecord::Migration
  def self.up
    rename_table :recipe_ingredients, :ingredients
  end

  def self.down
    rename_table :ingredients, :recipe_ingredients
  end
end
