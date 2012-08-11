class AddAddressToProspectus < ActiveRecord::Migration
  def change
    add_column :prospectus, :address, :string

  end
end
