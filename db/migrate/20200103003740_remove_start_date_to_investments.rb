class RemoveStartDateToInvestments < ActiveRecord::Migration[6.0]
  def change
    remove_column :investments, :start_date, :string
  end
end
