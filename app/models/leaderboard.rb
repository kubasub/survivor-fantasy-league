class Leaderboard
  def ranked_teams
    rank = 1
    ranked_teams = []

    teams_grouped_and_sorted_by_score.each do |score, team_group|
      team_group.each do |team|
        ranked_teams << RankedTeam.new(team, rank, score)
      end
      rank += team_group.size
    end

    ranked_teams
  end

  private

  def teams_grouped_and_sorted_by_score
    teams.group_by(&:score).sort.reverse
  end

  def teams
    Team.all.includes(scoring_events: :scoring_criterion)
  end
end
