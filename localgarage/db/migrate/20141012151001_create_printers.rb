class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.string :material
      t.string :machinemodel
      t.decimal :sizex
      t.decimal :sizey
      t.decimal :sizez
      t.decimal :resolution
      t.text :location
      t.string :image_url
      t.boolean :condition
      t.integer :user_id

      t.timestamps
    end
  end
end
