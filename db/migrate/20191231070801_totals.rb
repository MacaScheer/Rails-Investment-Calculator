class Totals < ActiveRecord::Migration[6.0]
  def change
    create_table :totals do |t|
    t.integer :user_id, null: false
    t.integer :investment_id, null: false
    t.string :company, null: false
    t.float :current_total, null: false
    end
    add_index :totals, :user_id
  end
end
