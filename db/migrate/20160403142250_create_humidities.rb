class CreateHumidities < ActiveRecord::Migration
  def change
    create_table :humidities do |t|
      t.references :farm, index: true, foreign_key: true
      t.references :crop, index: true, foreign_key: true
      t.float :humi_read

      t.timestamps null: false
    end
  end
end
