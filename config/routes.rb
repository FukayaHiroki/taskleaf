Rails.application.routes.draw do
  namespace :admin do
    get 'users/new'
    get 'users/edit'
    get 'users/index'
    get 'users/show'
  end
  root to: 'tasks#index'
  resources :tasks
end
