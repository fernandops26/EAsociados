class CreateInscritos < ActiveRecord::Migration
  def change
    create_table :inscritos do |t|
      t.string :nombre
      t.string :email
      t.boolean :estado

      t.timestamps null: false
    end
  end
end
