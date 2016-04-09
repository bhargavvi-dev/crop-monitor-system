class AddColumnToFarmer < ActiveRecord::Migration
  def change
    add_column :farmers, :name, :string
    add_column :farmers, :address, :text
    add_column :farmers, :phone, :string
  end
end
