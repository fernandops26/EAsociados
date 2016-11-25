class CreateSubservicios < ActiveRecord::Migration
  def change
    create_table :subservicios do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.boolean :estado
      t.references :servicio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
