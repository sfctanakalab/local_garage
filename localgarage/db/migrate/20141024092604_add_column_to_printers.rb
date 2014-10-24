class AddColumnToPrinters < ActiveRecord::Migration
  def change
    add_column :printers, :title, :string
  end
end
