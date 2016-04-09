class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.references :farm, index: true, foreign_key: true
      t.references :crop, index: true, foreign_key: true
      t.float :temp_read

      t.timestamps null: false
    end
  end
end
