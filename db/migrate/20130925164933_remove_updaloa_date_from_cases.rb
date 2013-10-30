class RemoveUpdaloaDateFromCases < ActiveRecord::Migration
  def up
    remove_column :cases, :upload_date
  end

  def down
    add_column :cases, :upload_date, :datetime
  end
end
