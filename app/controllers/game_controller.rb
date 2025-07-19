class GameController < ApplicationController
  def lobby
    @news_items = NewsItem.order(created_at: :desc).limit(10)
    @chat_messages = ChatMessage.includes(:user).order(created_at: :desc).limit(30)
  end

  def desk
    @tutorials = Tutorial.all
  end
end
