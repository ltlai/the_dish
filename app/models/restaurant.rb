class Restaurant < ActiveRecord::Base
  def display_address
    "#{street_address}, #{city}, #{state}"
  end

  def score
    if vote_count == 0
      return "No score yet..."
    else
      "#{(fresh_votes.to_f / vote_count * 100).round}%"
    end
  end

  def vote_count
    fresh_votes + rotten_votes
  end
end