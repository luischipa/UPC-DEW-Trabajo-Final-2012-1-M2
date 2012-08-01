class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :cofactura
      t.date :fefactura
      t.string :codigo
      t.string :name

      t.timestamps
    end
  end
end
