Rails.application.routes.draw do
  namespace :api, { format: 'json' } do
    resources :users, :only => :index
    resources :messages, :only => [:index, :create]
  end

  root 'messages#index'
end
