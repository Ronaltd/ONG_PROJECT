class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :item
      t.integer :amount
      t.references :order, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
