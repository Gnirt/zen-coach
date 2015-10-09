Rails.application.routes.draw do
  devise_for :users
  authenticated do
    root :to => "home#index", as: :authenticated_root
  end
  root :to => "welcome#index"
  get '/about', to: 'welcome#about'
  get '/tour', to: 'welcome#tour'
  resources :habits
  resources :calendar_events, only: :index
end
