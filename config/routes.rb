RailStrap::Application.routes.draw do

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  post "sessions" => "sessions#create"
  get "sign_up" => "users#new", :as => "sign_up"
  
  resources :users
  
  root :to => "users#home"
  
end
