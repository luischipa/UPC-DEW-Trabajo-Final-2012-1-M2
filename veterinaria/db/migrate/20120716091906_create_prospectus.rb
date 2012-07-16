class CreateProspectus < ActiveRecord::Migration
  def change
    create_table :prospectus do |t|
      t.string :name
      t.string :email
      t.string :imag
      t.string :phonehome
      t.string :phonecelular

      t.timestamps
    end
  end
end
