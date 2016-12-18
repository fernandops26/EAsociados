class Postulante < ActiveRecord::Base
	validates :nombres, presence: true, length:{minimum:5}
	validates :email, presence: true, email_format: { message: "el formato del email debe ser correcto" }
	validates :cv, presence: true
	
	mount_uploader :cv, ArchivoUploader
end
