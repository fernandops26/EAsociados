class Post < ActiveRecord::Base
	mount_uploader :imagen, ImagenUploader
	belongs_to :category
end
