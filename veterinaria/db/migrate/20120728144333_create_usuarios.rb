class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :User
      t.string :password
      t.string :tipo

      t.timestamps
    end
  end
end
