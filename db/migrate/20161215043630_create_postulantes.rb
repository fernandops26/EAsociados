class CreatePostulantes < ActiveRecord::Migration
  def change
    create_table :postulantes do |t|
      t.string :nombres
      t.string :email
      t.string :cv
      t.boolean :visto

      t.timestamps null: false
    end
  end
end
