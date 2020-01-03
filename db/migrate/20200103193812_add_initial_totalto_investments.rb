class AddInitialTotaltoInvestments < ActiveRecord::Migration[6.0]
  def change
    add_column :investments, :initial_total, :float, null: false
  end
end
