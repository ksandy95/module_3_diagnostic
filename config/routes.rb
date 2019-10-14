Rails.application.routes.draw do
  root 'welcome#index'
  get '/search', to: 'search#index'

  namespace :api do
    namespace :v1 do
      resources :characters, only: [:index, :show]
      resources :houses, only: [:index, :show]
    end
  end


end
