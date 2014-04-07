Jordanphoto::Application.routes.draw do

  namespace :api do
    namespace :admin do
      resources :topics, defaults: { format: 'json' }
      resources :reviews, defaults: { format: 'json' }
      resources :contacts, defaults: { format: 'json' }
    end
  end

  namespace :admin do
    root to: 'wellcome#show'
    resource :wellcome, only: [:show]
    resources :gallaries, only: [:index] do
      scope module: :gallaries do
        resources :photos, only: [:create, :destroy]
      end
    end
    resources :topics, only: [:index]
    resources :reviews, only: [:index]
    resources :contacts, only: [:index]
  end

  root to: 'high_voltage/pages#show', id: 'main'
  scope module: :web do
    resources :gallaries, only: [:index, :show]
    resources :topics, only: [:index, :show]
    resources :contacts, only: [:new, :create]
    resources :reviews, only: [:index]
  end

end
