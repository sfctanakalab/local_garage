class AddMaterialToPrinters < ActiveRecord::Migration
  def change
    add_column :printers, :material, :string
    add_column :printers, :color, :string
  end
end
