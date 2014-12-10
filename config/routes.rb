Rails.application.routes.draw do

	resources :blog

	get "admin" => "session#new"

	post "login" => "session#create"

	delete 'logout' => 'session#destroy'
	

	get 'blog/show' => 'blog#show', as: :show_posts

	get 'blog/new' => 'blog#new', as: :new_post

	post 'blog/create' => 'blog#create', as: :create_post

	root :to => "main#show"
end