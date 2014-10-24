class RemoveFilamenFromPrinters < ActiveRecord::Migration
  def change
    remove_column :printers, :filament_id, :integer
  end
end
