class Recurso < ActiveRecord::Base
	mount_uploader :archivo, ArchivoUploader
  	belongs_to :servicio
end
