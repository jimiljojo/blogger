Rails.application.routes.draw do
  root 'articles#show'
  resources :articles do
  	resources :comments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]

	get 'login'  => 'author_sessions#new'
	get 'logout' => 'author_sessions#destroy'
end
