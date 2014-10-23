class RemoveMaterialsFromPrinters < ActiveRecord::Migration
  def change
    remove_column :printers, :material, :string
    remove_column :printers, :material_color, :string
  end
end
