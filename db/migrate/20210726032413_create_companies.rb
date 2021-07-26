class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :person_in_charge

      t.timestamps
    end
  end
end
