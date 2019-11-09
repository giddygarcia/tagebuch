Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/edit'
  get 'sessions/destroy'
  resources :users
  resources :entries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'pages#home'
	get 'about', to: 'pages#about'
	get 'home', to: 'pages#home'
	get 'version', to: 'pages#version'
	get 'signup', to: 'users#new', as: 'signup'

	get 'login', to: 'sessions#new', as: 'login'
	post 'login', to: 'sessions#create'
	get 'logout', to: 'sessions#destroy', as: 'logout'

end