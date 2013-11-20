FitnessApp::Application.routes.draw do

#GET = pull down the page
#POST = create new record
#PATCH = update existing record
  # Routes for the Activity resource:
  # CREATE
  get '/activities/new', controller: 'activities', action: 'new', as: 'new_activity'
  post '/activities', controller: 'activities', action: 'create', as: 'activities'

  # READ
  get '/activities', controller: 'activities', action: 'index'
  get '/activities/:id', controller: 'activities', action: 'show', as: 'activity'

  # UPDATE
  get '/activities/:id/edit', controller: 'activities', action: 'edit', as: 'edit_activity'
  patch '/activities/:id', controller: 'activities', action: 'update'

  # DELETE
  delete '/activities/:id', controller: 'activities', action: 'destroy'
  #------------------------------

  # Homepage
  get '/', controller: 'homepage', action: 'index'

  # Routes for the Challenge resource:
  # CREATE
  get '/challenges/new', controller: 'challenges', action: 'new', as: 'new_challenge'
  post '/challenges', controller: 'challenges', action: 'create', as: 'challenges'

  # READ
  get '/challenges', controller: 'challenges', action: 'index'
  get '/challenges/:id', controller: 'challenges', action: 'show', as: 'challenge'

  # UPDATE:
  get '/challenges/:id/edit', controller: 'challenges', action: 'edit', as: 'edit_challenge'
  patch '/challenges/:id', controller: 'challenges', action: 'update'

  # DELETE
  delete '/challenges/:id', controller: 'challenges', action: 'destroy'
  #------------------------------

  # Routes for the Group resource:
# JOIN EXISTING
  get '/groups/join', controller: 'groups', action: 'existing', as: 'existing'
  post '/groups/join', controller: 'groups', action: 'joinexisting', as: 'join_existing'

  # CREATE
  get '/groups/new', controller: 'groups', action: 'new', as: 'new_group'
  post '/groups', controller: 'groups', action: 'create', as: 'groups'


  # READ
  get '/groups', controller: 'groups', action: 'index'
  get '/groups/:id', controller: 'groups', action: 'show', as: 'group'

  # UPDATE
  get '/groups/:id/edit', controller: 'groups', action: 'edit', as: 'edit_group'
  patch '/groups/:id', controller: 'groups', action: 'update'

  # DELETE
  delete '/groups/:id', controller: 'groups', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

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
