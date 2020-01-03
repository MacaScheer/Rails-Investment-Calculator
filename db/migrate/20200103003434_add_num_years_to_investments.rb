class AddNumYearsToInvestments < ActiveRecord::Migration[6.0]
  def change
    add_column :investments, :start_date, :string
  end
end
