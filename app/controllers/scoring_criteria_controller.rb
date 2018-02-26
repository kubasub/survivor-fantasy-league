class ScoringCriteriaController < ApplicationController
  def index
    @scoring_criteria = ScoringCriterion.all
  end
end
