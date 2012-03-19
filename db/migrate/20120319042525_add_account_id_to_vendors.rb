class AddAccountIdToVendors < ActiveRecord::Migration
  def self.up
    add_column :vendors, :account_id, :integer
  end

  def self.down
    remove_column :vendors, :account_id
  end
end
