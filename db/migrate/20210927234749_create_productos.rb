class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.string :descipcion
      t.float :precio
      t.float :stok

      t.timestamps
    end
  end
end
