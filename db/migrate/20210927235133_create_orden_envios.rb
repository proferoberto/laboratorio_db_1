class CreateOrdenEnvios < ActiveRecord::Migration[6.1]
  def change
    create_table :orden_envios do |t|
      t.datetime :fecha_entrega
      t.integer :estado
      t.string :codigo
      t.references :factura, null: false, foreign_key: true

      t.timestamps
    end
  end
end
