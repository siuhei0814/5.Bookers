Rails.application.routes.draw do
  root to: 'todolists#top'
  get 'todolists/top'
  get 'todolists/indexnew'
  get 'todolists/show'
  get 'todolists/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
