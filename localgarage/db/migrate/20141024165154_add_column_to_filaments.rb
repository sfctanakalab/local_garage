class AddColumnToFilaments < ActiveRecord::Migration
  def change
    add_column :filaments, :color, :string
  end
end
