class RenameDatabaseColumn < ActiveRecord::Migration
  def up
  	rename_column :images, :name, :path	
  end

  def down
  	rename_column :images, :name, :path
  end
end
