class CreateMantenimientos < ActiveRecord::Migration
  def change
    create_table :mantenimientos do |t|
      t.string :ab

      t.timestamps
    end
  end
end
