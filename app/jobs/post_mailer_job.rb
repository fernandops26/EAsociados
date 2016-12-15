class PostMailerJob
	include SuckerPunch::Job

	def perform(post)
		Inscrito.find_each do |inscrito|
			PostMailer.new_post(post, inscrito).deliver_now
		end
	end
end