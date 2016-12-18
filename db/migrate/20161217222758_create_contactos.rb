class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombres
      t.string :email
      t.string :telefono
      t.text :mensaje
      t.boolean :visto

      t.timestamps null: false
    end
  end
end
