class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.float :amount
      t.references :donation, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
