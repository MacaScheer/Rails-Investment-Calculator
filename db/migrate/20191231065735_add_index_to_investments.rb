class AddIndexToInvestments < ActiveRecord::Migration[6.0]
  def change
    add_index :investments, :user_id
  end
end
