Rails.application.routes.draw do
  resources :users
  root "events#index"
  resources :events do
    resources :registrations
  end
end
