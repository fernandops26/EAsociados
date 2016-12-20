ActiveAdmin.register Category do
	actions :all
	
	form(:html => { :multipart => true }) do |f|
		f.inputs 'Categoria' do
			f.input :nombre
		end
		f.actions
	end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
 permit_params do
   permitted = [:nombre]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
 end


end
