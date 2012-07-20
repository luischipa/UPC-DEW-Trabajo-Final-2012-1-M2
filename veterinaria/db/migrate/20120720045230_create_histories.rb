class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :entry
      t.string :discharge
      t.text :symptoms
      t.text :diagnosis
      t.text :treatment

      t.timestamps
    end
  end
end
