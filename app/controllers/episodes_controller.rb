class EpisodesController < ApplicationController
  def index
    @episodes = Episode.order(number: :desc)
  end

  def show
    @episode = Episode.find(params.fetch(:id))
    @scoring_events = ScoringEvent.where(episode: @episode).includes(:castaway, :scoring_criterion, :episode)
    @scoring_criteria = ScoringCriterion.all
    @castaways = Castaway.order(:first_name, :last_name)
  end
end
