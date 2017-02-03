Rails.application.routes.draw do


  get 'sessions/login'

  get 'sessions/home'

  get 'sessions/profile'

  get 'sessions/setting'

  # root :to => "sessions#login"
  get "signup", :to => "users#new"
  # post "signup", :to => "users#new"
  get "login", :to => "sessions#login"
  # post "login", :to => "sessions#login"
  get "logout", :to => "sessions#logout"
  # post "logout", :to => "sessions#logout"
  # get "home", :to => "sessions#home"
  # post "home", :to => "sessions#home"
  get "profile", :to => "sessions#profile"
  # post "profile", :to => "sessions#profile"
  get "setting", :to => "sessions#setting"
  # post "setting", :to => "sessions#setting"

  get 'users/new'
  get ':controller(/:action(/:id))(.:format)'
  post ':controller(/:action(/:id))(.:format)'

  resources :ingredients
  root 'page#home'
  get 'page/home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'ingredients/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: ingredient.id)
  #   get 'ingredients/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :ingredients

  # Example resource route with options:
  #   resources :ingredients do
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
  #   resources :ingredients do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :ingredients do
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
  #     # Directs /admin/ingredients/* to Admin::IngredientsController
  #     # (app/controllers/admin/ingredients_controller.rb)
  #     resources :ingredients
  #   end
end
