Rails.application.routes.draw do
  devise_for :users
  authenticated do
    root :to => "home#index", as: :authenticated_root
  end
  root :to => "welcome#index"
  resources :habits
end
