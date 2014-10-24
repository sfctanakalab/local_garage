class RemoveColorFromFilament < ActiveRecord::Migration
  def change
    remove_column :filaments, :color, :string
  end
end
