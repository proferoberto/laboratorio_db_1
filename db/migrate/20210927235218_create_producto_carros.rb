class CreateProductoCarros < ActiveRecord::Migration[6.1]
  def change
    create_table :producto_carros do |t|
      t.references :producto, null: false, foreign_key: true
      t.references :carro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
