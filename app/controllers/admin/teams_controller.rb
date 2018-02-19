module Admin
  class TeamsController < AdminController
    def index
      @teams = Team.order(:name)
    end

    def new
      @team = Team.new
    end

    def create
      @team = Team.create(team_params)
      redirect_to admin_teams_path
    end

    def edit
      @team = Team.find(params.fetch(:id))
    end

    def update
      @team = Team.find(params.fetch(:id))
      @team.update(team_params)
      redirect_to admin_teams_path
    end

    private

    def team_params
      params.require(:team).permit(
        :owner_name,
        :name,
        { castaway_ids: [] },
      )
    end
  end
end
