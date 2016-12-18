class Servicio < ActiveRecord::Base
	validates :nombre,presence:true, length:{minimum:5}
	validates :descripcion, presence:true, length:{minimum:5}
	validates :imagen, presence:true
	mount_uploader :imagen, ImagenUploader
	has_many :subservicios, dependent: :destroy
	has_many :recursos, dependent: :destroy
end
