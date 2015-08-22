Rails.application.routes.draw do
  root to: 'pages#home'
  
  get 'pages/home'

  get '/pizza', to: 'pages#pizza'

  get '/appetizers', to: 'pages#appetizers'

  get  '/calzones', to: 'pages#calzones'

  get '/subs', to: 'pages#subs'

  get 'home/pizza'

  get 'home/appetizers'

  get 'home/subs'
  
  # menu paths
  get 'menus/full_menu', as: 'full_menu'
  get 'menus/switch_store/:store', to: 'menus#switch_store', as: 'switch_store'
  
  # store paths
  get 'stores/enter_zip/:zip', to: 'stores#enter_zip', as: 'enter_zip'

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
