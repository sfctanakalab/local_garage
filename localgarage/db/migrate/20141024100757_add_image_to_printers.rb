class AddImageToPrinters < ActiveRecord::Migration
  def change
    add_column :printers, :image, :binary
  end
end
