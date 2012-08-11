class AddCodigoToProspectus < ActiveRecord::Migration
  def change
    add_column :prospectus, :codigo, :string

  end
end
