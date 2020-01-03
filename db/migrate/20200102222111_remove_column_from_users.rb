class RemoveColumnFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :session_token
    remove_column :users, :password_digest
  end
end
