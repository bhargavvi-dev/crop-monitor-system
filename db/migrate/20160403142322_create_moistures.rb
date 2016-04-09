class CreateMoistures < ActiveRecord::Migration
  def change
    create_table :moistures do |t|
      t.references :farm, index: true, foreign_key: true
      t.references :crop, index: true, foreign_key: true
      t.float :mois_read

      t.timestamps null: false
    end
  end
end
