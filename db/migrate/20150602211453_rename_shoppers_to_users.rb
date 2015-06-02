class RenameUsersToUsers < ActiveRecord::Migration
  def self.up
    rename_table :shoppers, :users
  end

   def self.down
    rename_table :shoppers, :users
  end

end
