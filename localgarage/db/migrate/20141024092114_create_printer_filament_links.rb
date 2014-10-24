class CreatePrinterFilamentLinks < ActiveRecord::Migration
  def change
    create_table :printer_filament_links do |t|
        t.references :printer, index: true
        t.references :filament, index: true
        t.integer :status

      t.timestamps
    end
    add_index(:printer_filament_links, [:printer_id, :filament_id], :unique => true)
  end
end
