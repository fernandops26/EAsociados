class Post < ActiveRecord::Base
	mount_uploader :imagen, ImagenUploader
	belongs_to :category
	belongs_to :equipo
end
