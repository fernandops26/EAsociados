class Sectore < ActiveRecord::Base
	validates :nombre, presence:true, length:{minimum:5}
	validates :descripcion, presence:true, length:{minimum:25}
	validates :imagen, presence:true
	mount_uploader :imagen, ImagenUploader

end
