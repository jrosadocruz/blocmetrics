Rails.application.routes.draw do

  get 'registered_applications/new'

  get 'registered_applications/create'

  get 'registered_applications/edit'

  get 'registered_applications/show'

  root to: 'static#index'

  resources :users

  namespace :api, defaults: { format: :json }, constraints: { format: :json } do
    resources :events, only: [:create]
  end

end
