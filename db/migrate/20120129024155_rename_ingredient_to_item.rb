class RenameIngredientToItem < ActiveRecord::Migration
  def self.up
    rename_table :ingredients, :items
  end

  def self.down
    rename_table :items, :ingredients
  end
end
