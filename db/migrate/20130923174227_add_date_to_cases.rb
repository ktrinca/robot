class AddDateToCases < ActiveRecord::Migration
  def change
    add_column :cases, :date, :datetime
  end
end
