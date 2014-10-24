class RemoveColumnFromFilaments < ActiveRecord::Migration
  def change
    remove_column :filaments, :color_r, :integer
    remove_column :filaments, :color_g, :integer
    remove_column :filaments, :color_b, :integer
  end
end
