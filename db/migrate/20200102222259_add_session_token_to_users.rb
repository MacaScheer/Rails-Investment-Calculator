class AddSessionTokenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :session_token, :string, null: false
    add_column :users, :password_digest, :string, null: false
    add_index :users, :session_token, unique: true
  end
end
