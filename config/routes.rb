Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :admin do
    resources :servicios do
      resources :subservicios
    end
  end
  #root 'admin/dashboard#index'



  #front
   root 'statics#index'

   get 'servicios' => 'statics#services'

   get 'servicios/:id' => 'statics#services'
   
   
   get 'servicios/:id/subservicios/:subservicio_id' => 'statics#services'

   get 'sectores' => 'statics#sectors'

   get 'sectores/:id' => 'statics#sectors'


   get 'equipo' => 'statics#team'

   get 'contacto' => 'statics#contact'

   post 'contacto' => 'statics#contact_new'

   get 'publicaciones' => 'statics#publications'

   get 'publicaciones/:id' => 'statics#showPublication', :as => :publicacion

   get 'nosotros' => 'statics#our'

   get 'suscribir' => 'statics#subscribe'

   post 'suscribir' => 'statics#subscribe_new'

   get 'postular' => 'statics#postulate'

   post 'postular' => 'statics#postulate_new'

   get 'recursos' => 'statics#resources'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
