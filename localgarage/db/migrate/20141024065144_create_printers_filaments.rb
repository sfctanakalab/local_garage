class CreatePrintersFilaments < ActiveRecord::Migration
  def change
    create_table :printers_filaments do |t|
      t.integer :printer_id
      t.integer :filament_id

      t.timestamps
    end
  end
end
