class Subservicio < ActiveRecord::Base
	mount_uploader :imagen, ImagenUploader
  	belongs_to :servicio
end
