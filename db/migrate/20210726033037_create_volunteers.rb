class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :volunteer_work
      t.text :description
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
