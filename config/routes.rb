Rails.application.routes.draw do
  #root 'api/movies#index'

  namespace :api do
    resources :movies
  end

  get '*other', to: 'static#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
