class AddIdColumnToIngredients < ActiveRecord::Migration
  def self.change
    add_column :ingredients, :id, :primary_key
  end
end
