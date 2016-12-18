class Inscrito < ActiveRecord::Base

	validates :nombre,presence:true
	validates :email,presence:true

	before_create :agregar_estado
	after_create :enviar_correo

	def agregar_estado
		self.estado=true
	end

	def enviar_correo
		InscritoMailer.new_inscrito(self).deliver_later
	end
end
