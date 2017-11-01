json.show do
  json.extract! @show, :id, :title, :type, :year, :status, :theater_info, :critic_consensus
  json.image_url asset_path(@show.image.url)
  json.show_score @show.critic_reviews.average(:score).to_i
end

json.reviews do
  json.array! @show.reviews do |review|
    json.extract! review, :id, :type, :author_name, :body, :score, :show_id, :author_id, :publication, :link_to_review
  end
end
