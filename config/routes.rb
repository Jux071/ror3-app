Rails.application.routes.draw do
  #get 'static_pages/home'
  #get 'static_pages/about'
  
  get '/about' => 'static_pages#about'

	#root "home#index"
	root 'static_pages#home'

	#get '/about' => 'about#about_us'

	resources :products
	resources :sellers
end
