class AddFilamentToPrinters < ActiveRecord::Migration
  def change
    add_column :printers, :filament_id, :integer
  end
end
