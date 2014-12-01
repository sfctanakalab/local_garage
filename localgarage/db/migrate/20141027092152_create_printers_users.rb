class CreatePrintersUsers < ActiveRecord::Migration
  def change
    create_table :printers_users do |t|
      t.references :printer, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
