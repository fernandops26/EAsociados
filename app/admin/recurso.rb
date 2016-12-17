ActiveAdmin.register Recurso do
	belongs_to :servicio, optional: true

	form(:html => { :multipart => true }) do |f|
		f.inputs 'Recurso' do
			f.input :titulo
			f.input :servicio, member_label: :nombre
			f.input :archivo, :as => :file
			f.input :links, :as => :ckeditor
			f.input :estado
		end
		f.actions
	end
#
 permit_params do
   permitted = [:titulo, :archivo,:links,:estado,:servicio_id]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
 end


end
