require 'rails_helper'

RSpec.describe "Tutorials", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tutorials/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/tutorials/show"
      expect(response).to have_http_status(:success)
    end
  end

end
