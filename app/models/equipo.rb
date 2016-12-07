class Equipo < ActiveRecord::Base
	mount_uploader :imagen, ImagenUploader
	belongs_to :role
end
