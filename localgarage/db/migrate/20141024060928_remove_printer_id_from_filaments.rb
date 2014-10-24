class RemovePrinterIdFromFilaments < ActiveRecord::Migration
  def change
    remove_column :filaments, :printer_id, :integer
  end
end
