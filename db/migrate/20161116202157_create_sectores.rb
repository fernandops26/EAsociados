class CreateSectores < ActiveRecord::Migration
  def change
    create_table :sectores do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.boolean :estado

      t.timestamps null: false
    end
  end
end
