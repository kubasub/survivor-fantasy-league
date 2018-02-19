Rails.application.routes.draw do
  get :standings, to: "standings#index"
  get :scoring_breakdown, to: "scoring_breakdown#index"

  namespace :admin do
    resources :castaways
    resources :episodes
    resources :scoring_events
    resources :teams

    root to: "scoring_events#new"
  end

  root to: "welcome#index"
end
