class CreateFarmsensors < ActiveRecord::Migration
  def change
    create_table :farmsensors do |t|
      t.references :farm, index: true, foreign_key: true
      t.references :sensor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
