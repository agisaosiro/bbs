Bbs::Application.routes.draw do

=begin
  resources :test do
    collection do
      get 'index'
      get 'write'
      get 'show'
      get 'register'
      post 'register'
    end
  end
=end

  # test
  match 'test/register' => 'test#register'
  match 'test' => 'test#index'
  match 'test/show' => 'test#show'
  match 'test/create' => 'test#create'

  # user
  match 'user/register' => 'user#register'
  match 'user' => 'user#index'
  match 'user/show' => 'user#show'
  match 'user/create' => 'user#create'
  match 'user/to_experiment' => 'user#to_experiment'
  match 'user/bit_toggle' => 'user#bit_toggle'

  # board
  match 'board/confirm' => 'board#confirm'
  match 'board/input' => 'board#input'
  match 'board/transmit' => 'board#transmit'
  match 'board/edit' => 'board#edit'
  match 'board/update/:id' => 'board#update'
  #match 'board/update' => 'board#update'
  match 'board/delete' => 'board#delete'



  resources :comments

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
