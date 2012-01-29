class RemoveIdFromIngredient < ActiveRecord::Migration
  def self.up
    remove_column :ingredients, :id
  end

  def self.down
    add_column :ingredients, :id, :integer
  end
end
