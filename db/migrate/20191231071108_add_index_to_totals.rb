class AddIndexToTotals < ActiveRecord::Migration[6.0]
  def change
    add_index :totals, :investment_id
  end
end
