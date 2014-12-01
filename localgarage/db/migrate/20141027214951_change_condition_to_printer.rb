class ChangeConditionToPrinter < ActiveRecord::Migration
  def up
  	change_column :printers, :condition, :boolean, null: false, default: true
  end

  def down
  	change_column :printers, :condition, :boolean
  end
end
