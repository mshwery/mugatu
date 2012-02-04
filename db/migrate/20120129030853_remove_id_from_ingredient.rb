class RemoveIdFromIngredient < ActiveRecord::Migration
  def self.up
    add_column :ingredients, :id, :primary_key
  end

  def self.down
    add_column :ingredients, :id, :integer
  end
end
