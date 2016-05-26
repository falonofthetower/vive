Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'
  get 'about-vive-investments' => 'pages#about'
  get 'our-process' => 'pages#about_process'
  resources :sessions, only: [:create, :destroy]
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'

  resources :properties, only: [:index, :show]
  namespace :admin do
    resources :properties
  end
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
