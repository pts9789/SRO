@shows.each do |show|
  json.set! show.id do
    json.extract! show, :id, :title, :type, :status
  end
end
