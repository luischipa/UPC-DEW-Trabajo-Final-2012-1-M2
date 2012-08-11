class CreateClientPatients < ActiveRecord::Migration
  def change
    create_table :client_patients do |t|
      t.integer :client_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
