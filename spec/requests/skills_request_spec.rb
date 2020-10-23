require 'rails_helper'

RSpec.describe "Skills", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/skills/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/skills/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/skills/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
