Rails.application.routes.draw do
	root "users#new"
	get "/signup", to: "users#new"
	post "/signup", to: "users#create"

	get "/login", to: "sessions#new"
	post "/login", to: "sessions#create"


 
	resources :users, except: :new do
	  member do
	    get :following, :followers
	  end
	end

	resources :relationships, only: [:create, :destroy]
	resources :relationships, only: [:create, :destroy]

end