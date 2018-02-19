class ScoringBreakdownController < ApplicationController
  def index
    @episodes = Episode.order(number: :desc)
    @scoring_criteria = ScoringCriterion.all
    @castaways = Castaway.order(:first_name, :last_name)
    @scoring_events = ScoringEvent.all.includes(:castaway, :scoring_criterion, :episode)
  end
end
