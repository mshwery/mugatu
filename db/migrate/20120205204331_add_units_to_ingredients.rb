class AddUnitsToIngredients < ActiveRecord::Migration
  def self.up
    add_column :ingredients, :unit_id, :integer
  end

  def self.down
    remove_column :ingredients, :unit_id
  end
end
