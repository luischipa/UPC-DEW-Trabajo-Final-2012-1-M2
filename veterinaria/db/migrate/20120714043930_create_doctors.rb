class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :nombre
	  t.string :apellido
	  t.string :email
	  t.string :telefono
      t.timestamps
    end
  end
end
