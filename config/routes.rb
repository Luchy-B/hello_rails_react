Rails.application.routes.draw do
  root 'root#index'

  namespace :api do
    namespace :v1 do
      resources :messages, only: [:index], defaults: { format: 'json' } do
      end
    end
  end
end