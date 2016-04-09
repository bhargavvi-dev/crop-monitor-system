class AddColumToTemperature < ActiveRecord::Migration
  def change
    add_reference :temperatures, :sensor, index: true, foreign_key: true
  end
end
