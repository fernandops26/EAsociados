class Inscrito < ActiveRecord::Base

	before_create :agregar_estado

	def agregar_estado
		self.estado=true
	end
end
