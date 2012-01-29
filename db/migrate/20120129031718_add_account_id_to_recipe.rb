class AddAccountIdToRecipe < ActiveRecord::Migration
  def self.up
    add_column :recipes, :account_id, :integer
  end

  def self.down
    remove_column :recipes, :account_id
  end
end
