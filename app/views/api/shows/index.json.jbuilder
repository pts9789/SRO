@shows.each do |show|
  json.shows do
    json.set! show.id do
      json.extract! show, :id, :title, :type, :status
      json.show_score show.critic_reviews.average(:score).to_i

    end
  end
end
