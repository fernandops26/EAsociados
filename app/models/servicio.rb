class Servicio < ActiveRecord::Base
	mount_uploader :imagen, ImagenUploader
	has_many :subservicios, dependent: :destroy
	has_many :recursos, dependent: :destroy
end
