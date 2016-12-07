class AddRoleToEquipos < ActiveRecord::Migration
  def change
    add_reference :equipos, :role, index: true, foreign_key: true
  end
end
