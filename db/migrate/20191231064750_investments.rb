class Investments < ActiveRecord::Migration[6.0]
  def change
    create_table :investments do |t|
    t.integer :user_id, null: false
    t.string :company, null: false
    t.integer :principal, null: false
    t.float :interest_rate, null: false
    t.integer :num_years, null: false
    t.float :total

    t.timestamps
    end
  end
end
