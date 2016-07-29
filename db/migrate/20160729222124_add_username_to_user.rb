class AddUsernameToUser < ActiveRecord::Migration
  def change # Anything inside of this method, is translated to SQL code and runs on the db(currently SQLite)
    add_column :users, :username, :string # Add a new column to table "users", called "username" and of type "string"
    add_index :users, :username, unique: true # first, index usernames for quick(rapid) lookup. second ensure that usernames are ALWAYS unique
  end
end
