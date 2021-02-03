Rails.application.routes.draw do

  
  
  
  namespace :api do
    namespace :v1 do
      resources :sources do
        get '/book/', to: 'sources#show'
        get '/article', to: 'sources#show'
      end
      resources :books do
        get '/tags', to: 'books#show'
        get '/all', to: 'books#show'
      end
      resources :creators
      resources :tags do
        get '/books/', to: 'tags#show'
      end
      resources :feedbacks

    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
