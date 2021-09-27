class CreateCarros < ActiveRecord::Migration[6.1]
  def change
    create_table :carros do |t|
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
