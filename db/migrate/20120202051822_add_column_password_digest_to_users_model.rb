class AddColumnPasswordDigestToUsersModel < ActiveRecord::Migration
  def up
    add_column :users, :password_digest, :string
  end
end
