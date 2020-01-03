class RemoveNumYearsFromInvestments3 < ActiveRecord::Migration[6.0]
  def change
    remove_column :investments, :num_years, :string
  end
end
