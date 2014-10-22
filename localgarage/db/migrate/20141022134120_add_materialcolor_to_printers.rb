class AddMaterialcolorToPrinters < ActiveRecord::Migration
  def change
    add_column :printers, :material_color, :string
  end
end
