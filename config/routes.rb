Rails.application.routes.draw do
  resources :channels
  resources :users
  namespace :api do
    namespace :v1 do
        end
  end

  get 'users/index'
  root 'users#index'
end
