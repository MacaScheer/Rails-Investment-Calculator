class AddIndexToUsers < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :session_token
    add_index :users, :name
  end
end