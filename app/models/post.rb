class Post < ActiveRecord::Base
	mount_uploader :imagen, ImagenUploader
	belongs_to :category
	belongs_to :equipo

	after_create :enviar_post

	def enviar_post
		PostMailerJob.new.async.perform(self)
	end
end
