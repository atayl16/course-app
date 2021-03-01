require 'rails_helper'

RSpec.describe "Feedbacks", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/feedback/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/feedback/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/feedback/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
