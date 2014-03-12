Jordanphoto::Application.routes.draw do

  namespace :admin do
    root to: 'wellcome#show'
    resource :wellcome, only: [:show]
    resources :gallaries
    resources :topics
    resources :previews
    resources :contacts
  end

end
