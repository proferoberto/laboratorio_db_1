class CreateProveedors < ActiveRecord::Migration[6.1]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :email
      t.integer :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
