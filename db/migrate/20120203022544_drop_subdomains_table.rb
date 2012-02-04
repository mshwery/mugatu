class DropSubdomainsTable < ActiveRecord::Migration
  def self.up
    drop_table :subdomains
  end

  def down
  end
end
