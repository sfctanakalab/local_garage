class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :stl_url
      t.string :gcode_url
      t.decimal :output_time
      t.boolean :finish_signal
      t.string :data_id

      t.timestamps
    end
  end
end
