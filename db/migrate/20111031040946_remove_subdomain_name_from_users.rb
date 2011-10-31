class RemoveSubdomainNameFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :suddomain_id
  end

  def self.down
    add_column :users, :suddomain_id, :integer
  end
end
