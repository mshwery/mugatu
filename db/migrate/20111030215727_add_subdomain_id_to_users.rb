class AddSubdomainIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :suddomain_id, :integer
  end

  def self.down
    remove_column :users, :suddomain_id
  end
end
