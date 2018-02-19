module ApplicationHelper
  def order_castaways_for_standings(castaways)
    castaways.sort_by do |castaway|
      [castaway.voted_out?, castaway.full_name].join("-")
    end
  end
end
