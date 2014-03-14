Jordanphoto::Application.routes.draw do

  namespace :admin do
    root to: 'wellcome#show'
    resource :wellcome, only: [:show]
    resources :gallaries do
      resources :photos, only: [:index]
    end
    resources :topics
    resources :reviews
    resources :contacts, only: [:index]
  end

end
