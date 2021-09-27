class CreateComentarios < ActiveRecord::Migration[6.1]
  def change
    create_table :comentarios do |t|
      t.string :descipcion
      t.integer :calificacion
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
