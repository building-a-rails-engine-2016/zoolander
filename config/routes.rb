Rails.application.routes.draw do
  root to: 'static_pages#index'

  resources :events, only: [:index]
  resources :sessions, only: [:create, :destroy]
  resources :registrations, only: [:create]
  resources :checkouts, only: [:create]

  mount Admin::Engine => '/admin'
  mount Catalog::Engine => '/library'
end
