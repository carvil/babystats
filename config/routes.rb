Babystats::Application.routes.draw do

  devise_for :users

  resources :head_circumference_percentiles

  resources :body_mass_percentiles

  resources :weight_percentiles

  resources :height_percentiles

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#create", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "babies" => "babies#index", :as => "babies"

  resources :stats
  resources :babies
  resources :users
  resources :sessions

  root :to => "users#new"

  root :to => "home#index"

end
