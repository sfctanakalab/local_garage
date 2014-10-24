class AddColumnPrinters < ActiveRecord::Migration
  def change
  	add_column :printers, :description, :string

  	add_column :printers, :address, :string

  	add_column :printers, :latitude, :float

  	add_column :printers, :longitude, :float
  end
end
