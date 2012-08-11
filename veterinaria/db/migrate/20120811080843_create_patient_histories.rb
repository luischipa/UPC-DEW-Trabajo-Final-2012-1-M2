class CreatePatientHistories < ActiveRecord::Migration
  def change
    create_table :patient_histories do |t|
	  t.integer :patient_id
	  t.integer :history_id
      t.timestamps
    end
  end
end
