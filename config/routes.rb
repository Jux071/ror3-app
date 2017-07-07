Rails.application.routes.draw do 

	root "home#index"

  resource :about, only: [:show]
	resources :products
	resources :sellers
	resources :categories
end
