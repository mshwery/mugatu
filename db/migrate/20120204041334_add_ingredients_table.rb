class AddIngredientsTable < ActiveRecord::Migration
 def self.up
    create_table :ingredients do |t|
      t.string :quantity
      t.integer :recipe_id
      t.integer :item_id
      t.primary_key :id

      t.timestamps
    end
  end

  def self.down
    drop_table :ingredients
  end
end
