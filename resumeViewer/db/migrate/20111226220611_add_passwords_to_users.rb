class AddPasswordsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :passwordHash, :string
    add_column :users, :passwordSalt, :string
  end
end
