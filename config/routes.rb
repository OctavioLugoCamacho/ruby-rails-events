Rails.application.routes.draw do
  root "events#index"
  resources :events do
    resources :registrations
  end
  resources :users
  get "signup" => "users#new"
end
