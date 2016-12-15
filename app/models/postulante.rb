class Postulante < ActiveRecord::Base
	validates :nombres, presence: true
	validates :email, presence: true
	validates :cv, presence: true
	mount_uploader :cv, ArchivoUploader
end
