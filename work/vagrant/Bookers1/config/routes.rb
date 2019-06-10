Rails.application.routes.draw do
  get '/' => 'books#top'
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show', as: 'book'
  get 'books/:id/destroy' => 'books#destroy'
  get 'books/:id/edit' => 'books#edit'

  post 'books' => 'books#create'
  post 'books/:id/destroy' => 'books#destroy'
  patch 'books/:id/update' => 'books#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
