Rails.application.routes.draw do 

	root "home#index"

	namespace :admin do
		resource :dashboard, only: [:show]
		resources :products
	end

	
  resource :about, only: [:show]
	resources :products
	resources :sellers
	resources :categories
	resources :users, only: [:new, :create, :show]
	resource :session, only: [:new, :create, :destroy]
end
