class Recurso < ActiveRecord::Base
	validates :nombre, presence:true, length:{minimum:5}
	validates :archivo, presence:true
	
	mount_uploader :archivo, ArchivoUploader
  	belongs_to :servicio
end
