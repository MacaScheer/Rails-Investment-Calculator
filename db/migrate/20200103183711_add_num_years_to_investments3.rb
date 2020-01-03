class AddNumYearsToInvestments3 < ActiveRecord::Migration[6.0]
  def change
    add_column :investments, :num_years, :integer, null: false
  end
end
