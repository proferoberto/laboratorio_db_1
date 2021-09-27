class CreateProveedorProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :proveedor_productos do |t|
      t.references :proveedor, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
