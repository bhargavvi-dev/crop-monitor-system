class CreateFarmcrops < ActiveRecord::Migration
  def change
    create_table :farmcrops do |t|
      t.references :farm, index: true, foreign_key: true
      t.references :crop, index: true, foreign_key: true
      t.date :from_date
      t.date :to_date

      t.timestamps null: false
    end
  end
end
