class AddColumnToUnitsTable < ActiveRecord::Migration
  def self.up
    add_column :units, :abbreviation, :string
  end

  def self.down
    remove_column :units, :abbreviation
  end
end
