class AddUploadDateToCases < ActiveRecord::Migration
  def change
    add_column :cases, :upload_date, :datetime
  end
end
