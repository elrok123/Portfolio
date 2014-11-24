Rails.application.routes.draw do
  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  get 'blog/show'

  get 'blog/create'

	root :to => "main#show"
end
