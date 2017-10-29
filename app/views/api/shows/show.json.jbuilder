json.extract! @show, :id, :title, :type, :year, :status, :theater_info, :critic_consensus
json.image_url asset_path(@show.image.url)
