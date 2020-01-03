class AddNewTotalToInvestments < ActiveRecord::Migration[6.0]
  def change
    add_column :investments, :new_total, :float
  end
end
