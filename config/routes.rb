ActionController::Routing::Routes.draw do |map|
  map.resources :somatometries

  map.resources :classifications

  map.resources :visits

  map.resources :neonatals

  map.resources :dependencies

  map.resources :categories

  map.resources :groups

  map.resources :variable_fetals

  map.resources :schoolings

  map.resources :risk_factors
  map.resources :violencies

  map.resources :ultra_sounds
  map.resources :ultra3_sounds
  map.resources :ultra2_sounds


  map.resources :ries_pars

  map.resources :socioeconomic_ocupations

  map.resources :economic_situations

  map.resources :ocupations

  map.resources :socioeconomics

  map.resources :first_times

  map.resources :appoiments

  map.resources :laboratories

  map.resources :laboratories

  map.resources :clinical_histories

  map.resources :psychologies, :belongs_to => [ :patient]
# map.resources :meetings, :member => {:get_meetings => :get}
  map.resources :squares
  map.resources :squares
  map.resources :counties
  map.resources :states
  map.resources :patients, :has_many => [:psychologies]
  map.resource :navigator
  map.root :controller => "user_sessions", :action => "new"
  #users routes
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'
  map.resource :account, :controller => "users"
  map.resource :user_session
  map.resources :users

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
