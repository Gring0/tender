json.array!(@auctions) do |auction|
  json.extract! auction, :id, :customer, :subject, :type
  json.url auction_url(auction, format: :json)
end
