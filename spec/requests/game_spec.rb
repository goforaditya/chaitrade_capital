require 'rails_helper'

RSpec.describe "Games", type: :request do
  describe "GET /lobby" do
    it "returns http success" do
      get "/game/lobby"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /trading_floor" do
    it "returns http success" do
      get "/game/trading_floor"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /news_room" do
    it "returns http success" do
      get "/game/news_room"
      expect(response).to have_http_status(:success)
    end
  end

end
