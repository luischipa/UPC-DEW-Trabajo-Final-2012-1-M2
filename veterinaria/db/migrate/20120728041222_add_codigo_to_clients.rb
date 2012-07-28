class AddCodigoToClients < ActiveRecord::Migration
  def change
    add_column :clients, :codigo, :string

  end
end
