class CreateFilaments < ActiveRecord::Migration
  def change
    create_table :filaments do |t|
      t.string :material
      t.string :color

      t.timestamps
    end
  end
end
