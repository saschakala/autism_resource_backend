Rails.application.routes.draw do

  
  resources :miscs
  resources :multimedia
  resources :social_media_accounts
  resources :tags
  resources :articles
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
