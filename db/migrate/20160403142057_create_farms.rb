class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.references :farmer, index: true, foreign_key: true
      t.string :location
      t.text :description

      t.timestamps null: false
    end
  end
end
