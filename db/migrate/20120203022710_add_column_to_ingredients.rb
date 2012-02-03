class AddColumnToIngredients < ActiveRecord::Migration
  def up
    add_column :ingredients, :id, :integer
  end
end
