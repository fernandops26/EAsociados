class Equipo < ActiveRecord::Base
	validates :nombres, presence:true, length:{minimum: 5}
	validates :apellidos, presence:true, length:{minimum: 5}
	validates :profesion, presence:true , length:{minimum: 5}
	validates :telefono, numericality:{ only_integer:true}
	validates :correo, presence:true, email_format: { message: "el formato del email debe ser correcto" }
	validates :descripcion, presence:true , length:{minimum: 25}
	validates :imagen, presence:true

	mount_uploader :imagen, ImagenUploader
	belongs_to :role
	has_many :posts, dependent: :destroy
end
