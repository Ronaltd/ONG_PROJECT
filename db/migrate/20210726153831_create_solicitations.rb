class CreateSolicitations < ActiveRecord::Migration[6.0]
  def change
    create_table :solicitations do |t|
      t.boolean :status
      t.references :volunteer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
