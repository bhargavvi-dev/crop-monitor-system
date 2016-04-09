class CreateCrops < ActiveRecord::Migration
  def change
    create_table :crops do |t|
      t.string :name
      t.float :ideal_temp
      t.float :ideal_humi
      t.float :ideal_mois
      t.float :min_temp
      t.float :max_temp
      t.float :min_humi
      t.float :max_humi
      t.float :min_mois
      t.float :max_mois

      t.timestamps null: false
    end
  end
end
