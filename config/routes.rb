Rails.application.routes.draw do

  
   get "/login/:id/index", to: "products#index", as: :index_page
   post "/login",to: "products#logout"
   get "/profile",to: "products#profile"
   #get "/login/products", to: "products#index", as: :index_page
   get "/login/new", to: "users#new", as: :new_page
   get "/login", to: "users#login", as: :login_page
   post "/authenticate", to: "users#authenticate" 
   get "/order/:id", to: "orders#create", as: :order_page 
   get "/kart/:id/", to: "orders#order_info", as: :cart_page
   post "/insert",to: "orders#insert"

   resource :user do
    member do
      post :create
    end
   end

   
   
   #post "/new", to:  "users#create",as: :login_page


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
