class AddColumnToIngredients < ActiveRecord::Migration
  def self.up
    add_column :ingredients, :id, :primary_key
  end
end
