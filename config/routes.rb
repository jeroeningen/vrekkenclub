Rails.application.routes.draw do
  namespace :beheren do
    resources :categories
    resources :articles
    resources :sessions, only: [:new, :create]
    root to: "articles#index"
  end
  resources :articles, only: [:index]
  root to: "articles#index"
  get "/artikel/:titel", to: "articles#show", as: "article"
  get "/404", to: "articles#index"
  get "/500", to: "articles#index"
  get "/:page", to: "pages#show"
end
