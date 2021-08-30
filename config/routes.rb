Rails.application.routes.draw do

  root to: 'todolists#top'
  get 'books' => 'todolists#index', as:'books'
  post 'books' => 'todolists#create'
  get 'books/:id' => 'todolists#show',as:'book'
  get 'books/:id/edit' => 'todolists#edit',as:'edit_book'
  patch 'books/:id' => 'todolists#update',as:'update_todolist'
  delete 'books/:id' => 'todolists#destroy',as:'destroy_todolist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
