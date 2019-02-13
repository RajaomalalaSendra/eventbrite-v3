Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'events/index'
  get 'events/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
