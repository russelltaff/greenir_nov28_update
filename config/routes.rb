GetGreenir::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home#index"
  
  resources :providers
  resources :electric_packages
  resources  :users


  # Custom Routes
  get '/electric_packages/checkout/:id' => "electric_packages#checkout"
  get '/contact' => "home#contact"

  post '/electric_packages/purchase'    => "electric_packages#purchase"

  get '/faq' => "faq#index"

  post '/user_emails' => "user_emails#create"

  get '/electric_packages/all' => "electric_packages#show"

  get '/thank-you' => "users#thank_you"

#   Prefix Verb   URI Pattern                           Controller#Action
#             providers GET    /providers(.:format)                  providers#index
#                       POST   /providers(.:format)                  providers#create
#          new_provider GET    /providers/new(.:format)              providers#new
#         edit_provider GET    /providers/:id/edit(.:format)         providers#edit
#              provider GET    /providers/:id(.:format)              providers#show
#                       PATCH  /providers/:id(.:format)              providers#update
#                       PUT    /providers/:id(.:format)              providers#update
#                       DELETE /providers/:id(.:format)              providers#destroy
#     electric_packages GET    /electric_packages(.:format)          electric_packages#index
#                       POST   /electric_packages(.:format)          electric_packages#create
#  new_electric_package GET    /electric_packages/new(.:format)      electric_packages#new
# edit_electric_package GET    /electric_packages/:id/edit(.:format) electric_packages#edit
#      electric_package GET    /electric_packages/:id(.:format)      electric_packages#show
#                       PATCH  /electric_packages/:id(.:format)      electric_packages#update
#                       PUT    /electric_packages/:id(.:format)      electric_packages#update
#                       DELETE /electric_packages/:id(.:format)      electric_packages#destroy
#                  root GET    /                                     home#index

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
