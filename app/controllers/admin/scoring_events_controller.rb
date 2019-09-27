module Admin
  class ScoringEventsController < AdminController
    def index
      @scoring_events = ScoringEvent.order(created_at: :desc)
    end

    def new
      @scoring_event = ScoringEvent.new
    end

    def create
      scoring_event = ScoringEvent.new(create_params)
      scoring_event.save!

      @scoring_event = ScoringEvent.new(create_params)

      flash.now[:thing] = "Created scoring event. #{scoring_event.castaway.full_name}; #{scoring_event.scoring_criterion.name}."
      render :new
    end

    def destroy
      @scoring_event = ScoringEvent.find(params.fetch(:id))
      @scoring_event.destroy
      redirect_to admin_scoring_events_path
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
