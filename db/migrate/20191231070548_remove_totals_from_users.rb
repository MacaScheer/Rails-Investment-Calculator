class RemoveTotalsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :totals
  end
end
