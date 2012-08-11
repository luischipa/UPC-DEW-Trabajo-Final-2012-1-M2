class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :species
      t.string :race
      t.string :birth
      t.string :hair

      t.timestamps
    end
  end
end
