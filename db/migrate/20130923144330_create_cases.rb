class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :nature
      t.text :subtitle
      t.string :picture
      t.string :description
      t.string :link
      t.text :credit

      t.timestamps
    end
  end
end
