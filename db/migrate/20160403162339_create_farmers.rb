class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :contact

      t.timestamps null: false
    end
  end
end
