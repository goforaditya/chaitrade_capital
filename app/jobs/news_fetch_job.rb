class NewsFetchJob < ApplicationJob
  queue_as :default

  API_URL = "https://newsapi.org/v2/everything?q=finance&sortBy=publishedAt&language=en"

  def perform
    key = Rails.configuration.news_api_key
    return unless key

    response = HTTParty.get("#{API_URL}&apiKey=#{key}")
    response.parsed_response["articles"].take(10).each do |article|
      NewsItem.find_or_create_by(headline: article["title"]) do |ni|
        ni.url = article["url"]
      end
    end
    # broadcast to lobby
    LobbyChannel.broadcast_to("lobby",
      type: "news_update",
      items: NewsItem.order(created_at: :desc).limit(10).pluck(:headline, :url)
    )
  end
end
