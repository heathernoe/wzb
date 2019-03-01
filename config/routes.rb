Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'projects#index'
	get '/projects' => 'projects#index'
	get '/thanks' => 'projects#thanks', as: :thanks
	resources :signups
	
	post '/contact' => 'contact#create', as: :contact
 end