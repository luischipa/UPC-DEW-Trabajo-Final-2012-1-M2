class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
	  t.string :lastname
	  t.string :email
	  t.string :phone
      t.timestamps
    end
  end
end
