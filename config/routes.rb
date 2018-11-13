Rails.application.routes.draw do

  devise_for :users
  resources :users
	resources :posts do
		resources :comments
	end
	#get '/lists/:list_id/posts/:id' => 'posts#destroy'
	root "posts#index"

	get '/about', to: 'pages#about'

end
