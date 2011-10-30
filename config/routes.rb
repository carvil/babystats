Babystats::Application.routes.draw do

  devise_for :users

  resources :users

  root :to => "users#new"

end
