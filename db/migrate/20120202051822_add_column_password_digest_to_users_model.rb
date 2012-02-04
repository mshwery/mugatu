class AddColumnPasswordDigestToUsersModel < ActiveRecord::Migration
  def self.up
    add_column :users, :password_digest, :string
  end
end
