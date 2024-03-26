Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #Defines the root path route ("/")
  root "articles#home"
  #resources :articles
  #get 'about', to: 'articles#about'
  get "articles", to: "articles#index", as: "articles"
  get "home", to: "articles#home", as: "home"
  resources :articles
  get "signup", to: "users#new"
  resources :users,except: [:new]
end
