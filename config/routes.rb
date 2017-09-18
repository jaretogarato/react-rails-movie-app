Rails.application.routes.draw do
  root 'api/movies#index'

  namespace :api do
    resources :movies
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
