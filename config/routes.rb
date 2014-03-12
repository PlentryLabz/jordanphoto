Jordanphoto::Application.routes.draw do

  namespace :admin do
    root to: 'wellcome#show'
    resource :wellcome, only: [:show]
    resources :gallaries, only: [:index, :create, :edit, :update] do
      resources :photos, only: [:index]
    end
    resources :topics, only: [:index, :create, :edit, :update, :destroy]
    resources :reviews, only: [:index, :create, :edit, :update, :destroy]
    resources :contacts, only: [:index, :show]
  end

end
