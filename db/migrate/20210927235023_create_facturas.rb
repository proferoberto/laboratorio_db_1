class CreateFacturas < ActiveRecord::Migration[6.1]
  def change
    create_table :facturas do |t|
      t.string :codigo
      t.float :total
      t.float :impuestos
      t.references :carro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
