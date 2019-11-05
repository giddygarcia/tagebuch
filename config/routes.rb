Rails.application.routes.draw do
  resources :entries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'pages#home'
	resources :entries
	get 'about', to: 'pages#about'
	get 'home', to: 'pages#home'
	get 'version', to: 'pages#version'
end