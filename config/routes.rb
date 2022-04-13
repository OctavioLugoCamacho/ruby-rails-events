Rails.application.routes.draw do
  resources :categories
  root "events#index"
  resources :events do
    resources :registrations
    resources :likes
  end
  resource :session, only: [:new, :create, :destroy]
  resources :users
  get "signup" => "users#new"
end
