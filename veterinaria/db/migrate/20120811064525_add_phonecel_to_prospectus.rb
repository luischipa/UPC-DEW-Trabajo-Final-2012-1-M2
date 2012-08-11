class AddPhonecelToProspectus < ActiveRecord::Migration
  def change
    add_column :prospectus, :phonecel, :string

  end
end
