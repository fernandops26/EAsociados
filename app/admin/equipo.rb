ActiveAdmin.register Equipo do

	belongs_to :role, optional: true

	form(:html => { :multipart => true }) do |f|
		f.inputs 'Equipo' do
			f.input :nombres
			f.input :apellidos
			f.input :profesion
			f.input :role, member_label: :nombre
			f.input :imagen, :as => :file, :label => "Subir Imagen"
			f.input :telefono
			f.input :correo
			f.input :descripcion, :as => :ckeditor
			f.input :estado
		end
		f.actions
	end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
 permit_params do
   permitted = [:nombres, :apellidos, :profesion, :imagen, :telefono, :correo, :descripcion, :estado, :role_id]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
 end

end
