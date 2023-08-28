Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/bookstores', to: 'bookstores#index'
  get '/bookstores/new', to: 'bookstores#new'
  get '/bookstores/:id', to: 'bookstores#show'
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'
  get '/bookstores/:bookstore_id/books', to: 'bookstore_books#index'
  post '/bookstores', to: 'bookstores#create'
  get '/bookstores/:id/edit', to: 'bookstores#edit'
  patch '/bookstores/:id', to: 'bookstores#update'
end
