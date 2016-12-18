class Inscrito < ActiveRecord::Base

	validates :nombre,presence:true, length:{minimum: 5}
	validates :email,presence:true, email_format: { message: "el formato del email debe ser correcto" }

	before_create :agregar_estado
	after_create :enviar_correo

	def agregar_estado
		self.estado=true
	end

	def enviar_correo
		InscritoMailer.new_inscrito(self).deliver_later
	end
end
