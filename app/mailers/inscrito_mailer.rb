class InscritoMailer < ApplicationMailer
	def new_inscrito(inscrito)
		@inscrito = inscrito
		@url  = 'http://whconsultores.com'
		mail(to: @inscrito.email, subject: 'Suscripción a Economistas & Asociados')
	end
end
