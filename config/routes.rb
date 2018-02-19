Rails.application.routes.draw do
  get :standings, to: "standings#index"
  get :scoring_breakdown, to: "scoring_breakdown#index"

  namespace :admin do
    resources :teams
    resources :scoring_events
  end

  root to: "welcome#index"
end
