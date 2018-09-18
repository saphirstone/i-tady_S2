Rails.application.routes.draw do
  resources :realisateurs
  get 'team', to:'home#team'
  
  resources :chef_de_projet_webs
  resources :flash_designers
  resources :web_masters
  resources :web_designers
  resources :integrateur_webs
  resources :referenceur_webs
  resources :dev_mobiles
  resources :photographes
  resources :vfxes
  resources :inge_sons
  resources :directeur_de_prods
  resources :scriptes
  resources :chef_electriciens
  resources :dirphots
  resources :scenaristes
  resources :cadreurs
  resources :perchistes
  resources :devs

  get 'show/show'
  get 'show/listecat'
  get 'show/listejob'
  get 'show/listedev'


  resources :show
  resources :acteurs
  resources :monteur_videos
  resources :producteurs
  resources :makeups
  resources :regiseurs
  resources :perchmen
  resources :chef_decorateurs
  resources :chef_operateurs
  resources :assistant_realisateurs
  resources :posts
  resources :comments, only: [:create, :destroy]
  devise_for :users
  resources :users do
    member do
      get :friends
      get :followers
      get :deactivate
      get :mentionable
    end
  end

  resources :events do
    collection do
      get :calendar
    end
  end

  authenticated :user do
    root to: 'home#index', as: 'home'
  end
  unauthenticated :user do
    root 'home#front'
  end

  match :follow, to: 'follows#create', as: :follow, via: :post
  match :unfollow, to: 'follows#destroy', as: :unfollow, via: :post
  match :like, to: 'likes#create', as: :like, via: :post
  match :unlike, to: 'likes#destroy', as: :unlike, via: :post
  match :find_friends, to: 'home#find_friends', as: :find_friends, via: :get
  match :about, to: 'home#about', as: :about, via: :get

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
