class Users < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :totals
      t.string :name, null: false
      t.string :companies
      t.timestamps
    end
  end
end