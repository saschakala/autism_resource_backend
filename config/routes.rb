Rails.application.routes.draw do

  
  resources :social_media_accounts
  namespace :api do
    namespace :v1 do
      resources :books do
        get '/tags', to: 'books#show'
        get '/all', to: 'books#show'
      end
      resources :tags do
        get '/books/', to: 'tags#show'
        get '/articles/', to: 'tags#show'
      end
      resources :articles do
        get '/all', to: 'articles#show'
      end
      resources :feedbacks
      resources :creators

    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
