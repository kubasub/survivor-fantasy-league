class ScoringBreakdownController < ApplicationController
  def index
    @episodes = Episode.all
    @scoring_criteria = ScoringCriterion.all
    @castaways = Castaway.all
    @scoring_events = ScoringEvent.all.includes(:castaway, :scoring_criterion, :episode)
  end
end
