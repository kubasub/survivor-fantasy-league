module Admin
  class CastawaysController < ApplicationController
    def index
      @castaways = Castaway.all.order(:first_name)
    end

    def edit
      @castaway = Castaway.find(params.fetch(:id))
    end

    def update
      @castaway = Castaway.find(params.fetch(:id))
      @castaway.update(update_params)
      redirect_to admin_castaways_path
    end

    private

    def update_params
      params.require(:castaway).permit(
        :first_name,
        :headshot_filename,
        :last_name,
        :voted_out
      )
    end
  end
end
