ActiveAdmin.register Sectore do

	form(:html => { :multipart => true }) do |f|
		f.inputs 'Sector' do
			f.input :nombre
			f.input :descripcion
			f.input :imagen, :as => :file, :label => "Subir Imagen"
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
	permitted = [:nombre, :descripcion,:imagen,:estado]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
 end


end
