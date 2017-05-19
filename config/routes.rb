Rails.application.routes.draw do

	namespace :admin do
		resources :products
	end

	resources :products do
		member do
			post :add_to_cart
		end
	end

  	devise_for :users

  	resources :carts

	root 'welcome#index'


end
