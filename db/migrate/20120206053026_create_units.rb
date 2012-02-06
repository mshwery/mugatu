class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :type

      t.timestamps
    end
  end
end
