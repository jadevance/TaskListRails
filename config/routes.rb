Rails.application.routes.draw do
  
  get '/people' => 'people#index', as: 'people'
  get 'people/show/:id' => 'people#show', as: 'person'
  get 'people/show/:id/tasks' => 'people#tasks', as: 'ptasks'

### Everything below here works ###
  root 'tasks#index'
  
  get '/tasks/new' => 'tasks#new', as: 'tasks' 
  post '/tasks/new' => 'tasks#create'
  
  get '/show/:id' => 'tasks#show', as: 'task' 

  get '/tasks/:id/edit' => 'tasks#edit', as: 'edit' 
  patch '/show/:id' => 'tasks#update'

  delete 'tasks/:id' => 'tasks#destroy', as: 'delete'
  
  get 'tasks/complete' => 'tasks#show_complete', as: 'show_complete'  
  post '/complete' => 'tasks#complete' 


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
