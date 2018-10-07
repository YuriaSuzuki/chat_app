Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  get 'users/:id' => 'users#show'

  namespace :api, { format: 'json' } do
    resources :messages, :only => [:index, :create]
  end

  root 'messages#index'
end
