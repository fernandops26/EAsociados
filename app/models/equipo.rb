class Equipo < ActiveRecord::Base
	mount_uploader :imagen, ImagenUploader
	belongs_to :role
	has_many :posts, dependent: :destroy
end
