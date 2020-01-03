class AddNumYearsOptToInvestments < ActiveRecord::Migration[6.0]
  def change
    add_column :investments, :num_years, :string
  end
end
