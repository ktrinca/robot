class ChangeSubtitleFormatInMyCases < ActiveRecord::Migration
  def up
    change_column :cases, :subtitle, :string
  end

  def down
    change_column :cases, :subtitle, :text
  end
end
