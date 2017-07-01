Rails.application.routes.draw do
	root "home#index"

	#get '/test', controller: 'home', action 'test'
	#get '/products' => 'home#products'
	get '/about' => 'about#about_us'

	resources :products
	resources :sellers
end
