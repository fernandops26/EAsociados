class PostMailer < ApplicationMailer
	def new_post(post, inscrito)
		@post = post
		@inscrito = inscrito

		mail(to: @inscrito.email, subject: @post.titulo)
	end
end
