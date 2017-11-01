json.show do
  json.extract! @show, :id, :title, :type, :year, :status, :theater_info, :critic_consensus
  json.image_url asset_path(@show.image.url)
  json.critic_score @show.critic_reviews.average(:score).to_i
  json.user_score @show.user_reviews.average(:score).to_i
  json.critic_review_ids @show.critic_reviews.map(&:id)
  json.user_review_ids @show.user_reviews.map(&:id)
end

json.reviews do
  @show.reviews.each do |review|
    json.set! review.id do
      json.extract! review, :id, :type, :author_name, :body, :score, :show_id, :author_id, :publication, :link_to_review
    end
  end
end
