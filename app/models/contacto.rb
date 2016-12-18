class Contacto < ActiveRecord::Base
	validates :nombres, presence:true, length: { minimum: 5 }
	validates :telefono,  numericality: { only_integer: true }
	validates :email, presence:true, email_format: { message: "el formato del email debe ser correcto" }
	validates :mensaje, presence:true, length: { minimum: 25 }

	before_create :agregar_visto

	def agregar_visto
		self.visto=false
	end
end
