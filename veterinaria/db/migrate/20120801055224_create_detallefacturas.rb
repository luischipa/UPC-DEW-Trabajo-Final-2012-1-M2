class CreateDetallefacturas < ActiveRecord::Migration
  def change
    create_table :detallefacturas do |t|
      t.string :cofactura
      t.string :coproducto
      t.integer :cantidad
      t.integer :precio
      t.integer :importe
      t.integer :subtotal
      t.integer :total

      t.timestamps
    end
  end
end
