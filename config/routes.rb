Rails.application.routes.draw do
  devise_for :users
  get :standings, to: "standings#index"

  resources :episodes

  namespace :admin do
    resources :castaways
    resources :episodes
    resources :scoring_events
    resources :teams

    root to: "scoring_events#new"
  end

  root to: "welcome#index"
end
