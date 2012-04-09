Babystats::Application.routes.draw do

  resources :babies do
    resources :stats
  end

  devise_for :users

  devise_scope :users do
    root :to => "home#index"
  end
end
