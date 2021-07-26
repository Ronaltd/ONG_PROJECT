class AddColumnsToDonations < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :description, :string
    add_column :donations, :donation_tag, :string
    add_column :donations, :status, :boolean
  end
end
