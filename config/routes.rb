Rails.application.routes.draw do

  root to: 'todolists#top'
  get 'todolists' => 'todolists#index'
  post 'todolists' => 'todolists#create'
  get 'todolists/:id' => 'todolists#show',as:'todolist'
  get 'todolists/:id/edit' => 'todolists#edit',as:'edit_todolist'
  patch 'todolists/:id' => 'todolists#update',as:'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy',as:'destroy_todolist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
