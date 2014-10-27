class AddDetaToPrinter < ActiveRecord::Migration
  def change
  	create_table :options do |t|
      t.boolean :is_checked, null: false, default: true
    end
  end
end
