Rails.application.routes.draw do
  get :standings, to: "standings#index"
  get :scoring_breakdown, to: "scoring_breakdown#index"

  namespace :admin do
    resources :castaways
    resources :scoring_events
    resources :teams
  end

  root to: "welcome#index"
end
