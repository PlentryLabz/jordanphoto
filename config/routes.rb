Jordanphoto::Application.routes.draw do

  namespace :admin do
    root to: 'wellcome#show'
    resource :wellcome, only: [:show]
    resources :gallaries do
      scope module: :gallaries do
        resources :photos, only: [:create, :destroy]
      end
    end
    resources :topics
    resources :reviews
    resources :contacts, only: [:index]
  end

end
