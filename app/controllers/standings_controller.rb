class StandingsController < ApplicationController
  def index
    @ranked_teams = Leaderboard.new.ranked_teams

    @line_chart_data = @ranked_teams.map do |team|
      {
        name: team.name,
        data: episodes.map do |episode|
          [
            episode.number,
            ScoringEvent
              .preload(:scoring_criterion)
              .where(castaway: team.castaways, episode: episodes.where(number: 1..episode.number))
              .sum(&:points)
          ]
        end.to_h
      }
    end
  end

  private

  def episodes
    @episodes ||= Episode.order(:number)
  end
end
