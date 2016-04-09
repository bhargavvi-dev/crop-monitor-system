class AddColumnToTemp < ActiveRecord::Migration
  def change
    add_column :temperatures, :humi_read, :float
  end
end
