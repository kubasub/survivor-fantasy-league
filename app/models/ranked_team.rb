class RankedTeam < SimpleDelegator
  attr_reader :rank, :score

  def initialize(team, rank, score)
    super(team)
    @rank = rank
    @score = score
  end
end
