module Admin
  class EpisodesController < AdminController
    def index
      @episodes = Episode.order(number: :desc)
    end

    def new
      @episode = Episode.new
    end

    def create
      @episode = Episode.create(create_params)
      redirect_to admin_episodes_path
    end

    def edit
      @episode = Episode.find(params.fetch(:id))
    end

    def update
      @episode = Episode.find(params.fetch(:id))
      @episode.update(update_params)
      redirect_to admin_episodes_path
    end

    def destroy
      @episode = Episode.find(params.fetch(:id))
      @episode.destroy
      redirect_to admin_episodes_path
    end

    private

    def create_params
      params.require(:episode).permit(
        :number,
        :title
      )
    end

    def update_params
      params.require(:episode).permit(
        :title
      )
    end
  end
end
