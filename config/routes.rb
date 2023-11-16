Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #Defines the root path route ("/")
   #root "articles#index"
   #resources :articles
   #get 'about', to: 'articles#about'
   get 'articles', to: 'articles#index', as: 'articles'
   get 'about', to: 'articles#about', as: 'about'
   resources :articles , only:[:show,:index]
  end
