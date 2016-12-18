class Contacto < ActiveRecord::Base
	validates :nombres, presence:true
	validates :email, presence:true
	validates :mensaje, presence:true
end
