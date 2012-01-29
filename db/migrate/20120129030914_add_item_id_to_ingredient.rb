class AddItemIdToIngredient < ActiveRecord::Migration
  def self.up
    add_column :ingredients, :item_id, :integer
  end

  def self.down
    remove_column :ingredients, :item_id
  end
end
