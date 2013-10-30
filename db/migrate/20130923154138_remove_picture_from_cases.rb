class RemovePictureFromCases < ActiveRecord::Migration
  def up
    remove_column :cases, :picture
  end

  def down
    add_column :cases, :picture, :string
  end
end
