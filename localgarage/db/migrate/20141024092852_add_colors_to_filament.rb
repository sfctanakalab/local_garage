class AddColorsToFilament < ActiveRecord::Migration
  def change
    add_column :filaments, :color_r, :integer
    add_column :filaments, :color_g, :integer
    add_column :filaments, :color_b, :integer
  end
end
