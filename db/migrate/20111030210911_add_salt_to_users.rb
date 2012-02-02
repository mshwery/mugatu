class AddSaltToUsers < ActiveRecord::Migration
  def self.up
    #add_column :users, :salt, :string
    remove_column :users, :salt
  end

  def self.down
    #remove_column :users, :salt
    add_column :users, :salt, :string
  end
end
