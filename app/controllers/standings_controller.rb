class StandingsController < ApplicationController
  def index
    @ranked_teams = Leaderboard.new.ranked_teams
  end
end
