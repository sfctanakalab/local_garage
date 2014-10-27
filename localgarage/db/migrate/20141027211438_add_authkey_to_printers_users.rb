class AddAuthkeyToPrintersUsers < ActiveRecord::Migration
  def change
    add_column :printers_users, :authkey, :string
    add_column :printers_users, :relation, :integer
  end
end
