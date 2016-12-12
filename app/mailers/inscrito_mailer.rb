class InscritoMailer < ApplicationMailer
	def new_inscrito(inscrito)
		@inscrito = inscrito
		@url  = 'http://whasociados.com'
		mail(to: @inscrito.email, subject: 'Suscripción a Economistas & Asociados')
	end
end
