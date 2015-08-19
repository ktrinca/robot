class ChangeCreditTextInMyCases < ActiveRecord::Migration
  def up
    change_column :cases, :credit, :string
  end

  def down
    change_column :cases, :credit, :text	
  end
end
