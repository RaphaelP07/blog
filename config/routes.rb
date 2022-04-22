Rails.application.routes.draw do
  devise_for :users
  resources :posts

  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  get '/articles/:id' => 'articles#show', as: 'show_article'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  post '/articles' => 'articles#create', as: 'create_article'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
