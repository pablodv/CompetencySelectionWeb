ActionController::Routing::Routes.draw do |map|
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

  # See how all your routes lay out with "rake routes"Human Rosource

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  #map.root :controller => "user_sessions", :action => "new"

  map.root :controller => 'user_sessions', :action => 'new'

  map.registration 'registration', :controller => 'users', :action => 'registration'
  map.register    '/register/:activation_code', :controller => 'activations', :action => 'new'
  map.activate    '/activate/:id', :controller => 'activations', :action => 'create'

  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'
  map.resource :user_sessions

  map.welcome 'welcome', :controller => 'welcome', :action => 'index'

  # Company ROUTES
  map.resources :companies
  map.resources :areas do |area|
    area.resources :departaments do |departament|
      departament.resources :sections
    end
  end
  map.resources :institutes
  map.resources :specialties

  # Human Rosource ROUTES
  map.resources :vacancies
  map.resources :competencies do |competency|
    competency.resources :behaviors
  end
  map.resources :job_competency_profiles 
  map.departament_by_area 'job_competency_profiles/departament_by_area/:area_id', :controller => :job_competency_profiles, :action => :departament_by_area
  map.resources :question_dictionaries 
  map.resources :questions
  map.resources :values

  # Profile ROUTES
  map.resources :users do |user|
    user.resources :educations
    user.resources :jobs
    user.institute_type_education 'educations/institute_type_education/:type', :controller => :educations, :action => :institute_type_education
    user.specialty_type_education 'educations/specialty_type_education/:type', :controller => :educations, :action => :specialty_type_education
  end

end
