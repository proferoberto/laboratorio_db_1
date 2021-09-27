class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :password
      t.string :email
      t.integer :tipo

      t.timestamps
    end
  end
end
