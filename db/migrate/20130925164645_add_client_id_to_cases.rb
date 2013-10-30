class AddClientIdToCases < ActiveRecord::Migration
  def change
    add_column :cases, :client_id, :integer
  end
end
