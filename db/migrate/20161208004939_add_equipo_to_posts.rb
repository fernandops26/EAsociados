class AddEquipoToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :equipo, index: true, foreign_key: true
  end
end
