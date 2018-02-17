Rails.application.routes.draw do
  get :standings, to: "standings#index"
  get :scoring_breakdown, to: "scoring_breakdown#index"

  namespace :adminz do
    resources :scoring_events
  end
end
