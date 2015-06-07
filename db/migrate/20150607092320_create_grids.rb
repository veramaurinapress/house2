class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.text :title
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
