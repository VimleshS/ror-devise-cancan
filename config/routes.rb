Rails.application.routes.draw do

  #works for rails generate devise:views
  #uncomment and check routes.. to get more info..
  #devise_for :users


  devise_for :users , controllers: { registrations: "users/registrations" }
  #works multiple route.
  #Here the views "Sign up" are customized... 
  #using 
    #--- rails generate devise:views users
    #--- rails generate devise:controllers users
  #refer 
    #--- https://github.com/plataformatec/devise 
  #devise_for :users , controllers: { registrations: "users/registrations", sessions: "xxxxxxxxxxx/sessions" }
  #works normal route
  # resources :users, only: [:index]
  resources :high_scores
  root to: "high_scores#index"

 
end
