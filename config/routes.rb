Rails.application.routes.draw do
  namespace :beheren do
    resources :categories
    resources :articles
    resources :sessions, only: [:new, :create]
    root to: "articles#index"
  end
  resources :articles, only: [:index, :show]
  root to: "articles#index"
  get "/404", to: "articles#index"
  get "/500", to: "articles#index"
end
