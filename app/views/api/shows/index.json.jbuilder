@shows.each do |show|
  json.shows do
    json.set! show.id do
      json.extract! show, :id, :title, :type, :status
      json.show_score show.critic_reviews.average(:score).to_i
    end
  end

  json.reviews do
    json.array! show.critic_reviews do |review|
      json.extract! review, :id, :type, :author_name, :body, :score, :show_id, :author_id, :publication, :link_to_review
    end
  end

end
