class Post < ActiveRecord::Base
	validates :titulo, presence:true, length:{minimum: 5}
	validates :contenido, presence:true, length:{minimum: 25}
	validates :imagen, presence:true

	mount_uploader :imagen, ImagenUploader
	belongs_to :category
	belongs_to :equipo

	after_create :enviar_post

	def enviar_post
		PostMailerJob.new.async.perform(self)
	end
end
