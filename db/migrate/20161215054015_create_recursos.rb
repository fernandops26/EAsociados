class CreateRecursos < ActiveRecord::Migration
  def change
    create_table :recursos do |t|
      t.string :titulo
      t.string :archivo
      t.text :links
      t.references :servicio, index: true, foreign_key: true
      t.boolean :estado

      t.timestamps null: false
    end
  end
end
