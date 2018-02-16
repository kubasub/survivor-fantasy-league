module Admin
  class ScoringEventsController < ApplicationController
    def new
      @scoring_event = ScoringEvent.new
    end

    def create
      @scoring_event = ScoringEvent.new(create_params)
      @scoring_event.save!
      redirect_to standings_path
    end

    private

    def create_params
      params.require(:scoring_event).permit(
        :castaway_id,
        :episode_id,
        :scoring_criterion_id,
        :multiplier
      )
    end
  end
end
