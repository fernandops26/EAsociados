class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :nombres
      t.string :apellidos
      t.string :profesion
      t.string :imagen
      t.string :telefono
      t.string :correo
      t.text :descripcion
      t.boolean :estado

      t.timestamps null: false
    end
  end
end
